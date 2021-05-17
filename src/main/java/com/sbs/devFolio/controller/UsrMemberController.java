package com.sbs.devFolio.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.devFolio.service.MemberService;

@Controller
public class UsrMemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public String doJoin(@RequestParam Map<String, Object> param) {
		if (param.get("loginId") == null) {
			return "로그인아이디를 입력해주세요.";
		}
		
		if (param.get("loginPw") == null) {
			return "로그인비밀번호 입력해주세요.";
		}

		if (param.get("name") == null) {
			return "이름을 입력해주세요.";
		}

		if (param.get("nickname") == null) {
			return "별명을 입력해주세요.";
		}

		if (param.get("email") == null) {
			return "이메일을 입력해주세요.";
		}

		if (param.get("cellphoneNo") == null) {
			return "번호를 입력해주세요.";
		}

		return memberService.join(param);
		
		
	}
}
