package com.sbs.devFolio.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.devFolio.dao.ArticleDao;
import com.sbs.devFolio.dto.Article;
import com.sbs.devFolio.dto.Board;
import com.sbs.devFolio.dto.ResultData;
import com.sbs.devFolio.util.Util;

@Service
public class ArticleService {
	@Autowired
	private ArticleDao articleDao;
	@Autowired
	private MemberService memberService;

	public ResultData addArticle(Map<String, Object> param) {
		articleDao.addArticle(param);

		int id = Util.getAsInt(param.get("id"), 0);

		return new ResultData("S-1", "글작성 성공", "id", id);
	}

	public Article getArticle(int id) {
		return articleDao.getArticle(id);
	}

	public ResultData actorCanModifyRd(Article article, int loginedMemberId) {
		if (article.getMemberId() == loginedMemberId) {
			return new ResultData("S-1", "작성자입니다. 수정 가능합니다.");
		}

		if (memberService.isAdmin(loginedMemberId)) {
			return new ResultData("S-2", "관리자입니다. 수정 가능합니다.");
		}

		return new ResultData("F-1", "권한이 없습니다.");
	}

	public ResultData modifyArticle(Map<String, Object> param) {
		articleDao.modifyArticle(param);

		int id = Util.getAsInt(param.get("id"), 0);

		return new ResultData("S-1", "글수정 성공", "id", id);
	}

	public ResultData actorCanDeleteRd(Article article, int loginedMemberId) {
		return actorCanModifyRd(article, loginedMemberId);
	}

	public ResultData deleteArticle(int id) {
		articleDao.deleteArticle(id);

		return new ResultData("S-1", "글삭제 성공", "id", id);
	}

	public Board getBoard(int id) {
		return articleDao.getBoard(id);
	}

	public List<Article> getArticles(int boardId) {
		return articleDao.getArticles(boardId);
	}

	public Article getForPrintArticle(int id) {
		return articleDao.getForPrintArticle(id);
	}

	public List<Article> getForPrintArticles(int boardId) {
		return articleDao.getForPrintArticles(boardId);
	}

	public void increaseHit(int id) {
		articleDao.increaseHit(id);
	}

}
