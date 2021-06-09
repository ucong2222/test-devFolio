package com.sbs.devFolio.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ArticleDao {

	public void addArticle(Map<String, Object> param);

}
