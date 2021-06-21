package com.sbs.devFolio.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sbs.devFolio.dto.Member;

@Mapper
public interface MemberDao {
	public void join(Map<String, Object> param);

	public Member getMember(@Param("id") int id);

	public Member getMemberbyLoginId(@Param("loginId") String loginId);
	
	Member getMemberByAuthKey(@Param("authKey") String authKey);

	public Member getMemberByNickname(@Param("nickname") String nickname);
}
