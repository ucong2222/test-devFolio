package com.sbs.devFolio.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDao {
	public void join(Map<String, Object> param);
}
