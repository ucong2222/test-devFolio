package com.sbs.devFolio.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.devFolio.dao.MemberDao;
import com.sbs.devFolio.dto.Member;
import com.sbs.devFolio.dto.ResultData;
import com.sbs.devFolio.util.Util;

@Service
public class MemberService {
	@Autowired
	private MemberDao memberDao;

	public ResultData join(Map<String, Object> param) {
		memberDao.join(param);

		int id = Util.getAsInt(param.get("id"), 0);

		return new ResultData("S-1", String.format("%s님 환영합니다.", param.get("nickname")), "id", id);
	}

	public Member getMember(int id) {
		return memberDao.getMember(id);
	}

	public Member getMemberByLoginId(String loginId) {
		return memberDao.getMemberbyLoginId(loginId);
	}

	public Member getMemberByAuthKey(String authKey) {
		return memberDao.getMemberByAuthKey(authKey);
	}
	
	public Member getMemberByNickname(String nickname) {
		return memberDao.getMemberByNickname(nickname);
	}

	public boolean isAdmin(int id) {
		Member member = getMember(id);

		return member.getAuthLevel() == 7;
	}

	public int loginIdCheck(String loginId) {
		Member member = getMemberByLoginId(loginId);

		if (member != null) {
			return 1;
		} else {
			return 0;
		}
	}

	public int nicknameCheck(String nickname) {
		Member member = getMemberByNickname(nickname);

		if (member != null) {
			return 1;
		} else {
			return 0;
		}
	}

}
