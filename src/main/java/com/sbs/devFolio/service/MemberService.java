package com.sbs.devFolio.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.devFolio.dao.MemberDao;

@Service
public class MemberService {
	@Autowired
	private MemberDao memberDao;
	
	public String join(Map<String, Object> param) {
		memberDao.join(param);
		
		return param.get("nickname")+ "님 환영합니다!";
	}

}
