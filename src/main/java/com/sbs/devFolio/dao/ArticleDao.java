package com.sbs.devFolio.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sbs.devFolio.dto.Article;
import com.sbs.devFolio.dto.Board;

@Mapper
public interface ArticleDao {

	public void addArticle(Map<String, Object> param);

	public Article getArticle(@Param("id") int id);

	public void modifyArticle(Map<String, Object> param);

	public void deleteArticle(@Param("id") int id);

	public Board getBoard(@Param("id") int id);

	public List<Article> getArticles(@Param("boardId") int boardId);

	public Article getForPrintArticle(@Param("id") int id);

	public List<Article> getForPrintArticles(@Param("boardId") int boardId);

	public void increaseHit(@Param("id") int id);

}
