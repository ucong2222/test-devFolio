package com.sbs.devFolio.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.devFolio.dto.Member;
import com.sbs.devFolio.dto.ResultData;
import com.sbs.devFolio.service.MemberService;

@Controller
public class UsrMemberController extends BaseController {
	@Autowired
	private MemberService memberService;

	@RequestMapping("/usr/member/join")
	public String showJoin() {
		return "usr/member/join";
	}

	@RequestMapping("/usr/member/loginIdCheck")
	@ResponseBody
	public int loginIdCheck(@RequestParam Map<String, Object> param) {
		String loginId = (String) param.get("loginId");
		int result = memberService.loginIdCheck(loginId);
		return result;
	}

	@RequestMapping("/usr/member/nicknameCheck")
	@ResponseBody
	public int nicknameCheck(@RequestParam Map<String, Object> param) {
		String nickname = (String) param.get("nickname");
		int result = memberService.nicknameCheck(nickname);
		return result;
	}

	@RequestMapping("/usr/member/doJoin")
	public String doJoin(@RequestParam Map<String, Object> param, HttpServletRequest req) {
		if (param.get("loginId") == null) {
			return msgAndBack(req, "로그인아이디를 입력해주세요.");
		}

		Member existingMember = memberService.getMemberByLoginId((String) param.get("loginId"));

		if (existingMember != null) {
			return msgAndBack(req, String.format("%s (은)는 이미 사용중인 로그인 아이디 입니다.", param.get("loginId")));
		}

		if (param.get("loginPwReal") == null) {
			return msgAndBack(req, "로그인 비밀번호를 입력해주세요.");
		}

		if (param.get("name") == null) {
			return msgAndBack(req, "이름을 입력해주세요.");
		}

		if (param.get("nickname") == null) {
			return msgAndBack(req, "별명을 입력해주세요.");
		}

		if (param.get("email") == null) {
			return msgAndBack(req, "이메일을 입력해주세요.");
		}

		if (param.get("cellphoneNo") == null) {
			return msgAndBack(req, "번호를 입력해주세요.");
		}

		memberService.join(param);

		return msgAndReplace(req, "회원가입이 완료되었습니다.", "../home/main");

	}

	@RequestMapping("usr/member/login")
	public String showLogin() {
		return "usr/member/login";
	}

	@RequestMapping("/usr/member/doLogin")
	public String doLogin(String loginId, String loginPwReal, HttpSession session, HttpServletRequest req) {
		if (session.getAttribute("loginedMemberId") != null) {
			return msgAndBack(req, "이미 로그인 되었습니다.");
		}

		if (loginId == null) {
			return msgAndBack(req, "로그인 아이디를 입력해주세요.");
		}

		Member existingMember = memberService.getMemberByLoginId(loginId);

		if (existingMember == null) {
			return msgAndBack(req, "존재하지 않는 로그인 아이디 입니다.");
		}

		if (loginPwReal == null) {
			return msgAndBack(req, "로그인 비밀번호를 입력해주세요.");
		}

		if (existingMember.getLoginPw().equals(loginPwReal) == false) {
			return msgAndBack(req, "비밀번호가 일치하지 않습니다.");
		}

		session.setAttribute("loginedMemberId", existingMember.getId());

		return msgAndReplace(req, "로그인 성공하셨습니다.", "../home/main");
	}

	@RequestMapping("/usr/member/doLogout")
	public String doLogout(HttpSession session, HttpServletRequest req) {
		if (session.getAttribute("loginedMemberId") == null) {
			return msgAndBack(req, "이미 로그아웃 되었습니다.");
		}

		session.removeAttribute("loginedMemberId");

		return msgAndReplace(req, "로그아웃 되었습니다.", "../home/main");
	}

	@RequestMapping("/usr/member/memberByAuthKey")
	@ResponseBody
	public ResultData showMemberByAuthKey(String authKey) {
		if (authKey == null) {
			return new ResultData("F-1", "authKey를 입력해주세요.");
		}

		Member existingMember = memberService.getMemberByAuthKey(authKey);

		return new ResultData("S-1", String.format("유요한 회원입니다."), "member", existingMember);
	}

	@RequestMapping("/usr/member/authKey")
	@ResponseBody
	public ResultData showAuthKey(String loginId, String loginPw) {
		if (loginId == null) {
			return new ResultData("F-1", "loginId를 입력해주세요.");
		}

		Member existingMember = memberService.getMemberByLoginId(loginId);

		if (existingMember == null) {
			return new ResultData("F-2", "존재하지 않는 로그인아이디 입니다.", "loginId", loginId);
		}

		if (loginPw == null) {
			return new ResultData("F-1", "loginPw를 입력해주세요.");
		}

		if (existingMember.getLoginPw().equals(loginPw) == false) {
			return new ResultData("F-3", "비밀번호가 일치하지 않습니다.");
		}

		return new ResultData("S-1", String.format("%s님 환영합니다.", existingMember.getNickname()), "authKey",
				existingMember.getAuthKey(), "member", existingMember);
	}
}
