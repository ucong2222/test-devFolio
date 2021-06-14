package com.sbs.devFolio.controller;

import java.net.http.HttpRequest;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.devFolio.dto.Article;
import com.sbs.devFolio.dto.Board;
import com.sbs.devFolio.dto.ResultData;
import com.sbs.devFolio.service.ArticleService;
import com.sbs.devFolio.util.Util;

@Controller
public class UsrArticleController extends BaseController {
	@Autowired
	private ArticleService articleService;

	// 글작성 JSP
	@RequestMapping("usr/article/write")
	public String showWrite(Integer boardId, HttpServletRequest req) {
		
		if(boardId == null) {
			return msgAndBack(req, "게시판 번호를 입력해주세요.");
		}
		
		Board board = articleService.getBoard(boardId);
		
		if ( board == null) {
			return msgAndBack(req, "해당 게시판은 존재하지 않습니다.");
		}
		
		return "usr/article/write";
	}
	
	// 글작성
	@RequestMapping("/usr/article/doWrite")
	@ResponseBody
	public ResultData doWrite(@RequestParam Map<String, Object> param, HttpServletRequest req) {
		int loginedMemberId = (int) req.getAttribute("loginedMemberId");

		if (param.get("boardId") == null) {
			return new ResultData("F-1", "게시판 번호를 입력해주세요.");
		}

		if (param.get("title") == null) {
			return new ResultData("F-1", "제목을 입력해주세요.");
		}

		if (param.get("body") == null) {
			return new ResultData("F-1", "내용을 입력해주세요");
		}

		param.put("memberId", loginedMemberId);

		return articleService.addArticle(param);
	}

	// 글리스트
	@RequestMapping("usr/article/list")
	@ResponseBody
	public ResultData showList(@RequestParam(defaultValue = "1") int boardId) {
		Board board = articleService.getBoard(boardId);

		if (board == null) {
			return new ResultData("F-1", "존재하지 않는 게시판입니다.");
		}
		
		List<Article> articles = articleService.getArticles(board.getId());

		return new ResultData("S-1", "성공", "articles", articles);
	}

	// 글상세
	@RequestMapping("usr/article/detail")
	@ResponseBody
	public ResultData showDetail(Integer id) {
		if (id == null) {
			return new ResultData("F-1", "게시물 아이디를 입력해주세요.");
		}

		Article article = articleService.getArticle(id);

		if (article == null) {
			return new ResultData("F-1", "해당 게시물은 존재하지 않습니다.");
		}

		return new ResultData("S-1", "성공", "article", article);
	}

	// 글수정
	@RequestMapping("/usr/article/doModify")
	@ResponseBody
	public ResultData doModify(@RequestParam Map<String, Object> param, HttpServletRequest req) {
		int loginedMemberId = (int) req.getAttribute("loginedMemberId");

		int id = Util.getAsInt(param.get("id"), 0);

		if (id == 0) {
			return new ResultData("F-1", "게시물 아이디를 입력해주세요.");
		}

		Article article = articleService.getArticle(id);

		if (article == null) {
			return new ResultData("F-1", "해당 게시물은 존재하지 않습니다.");
		}

		if (Util.isEmpty(param.get("title"))) {
			return new ResultData("F-1", "제목을 입력해주세요.");
		}

		if (Util.isEmpty(param.get("body"))) {
			return new ResultData("F-1", "내용을 입력해주세요.");
		}

		ResultData actorCanModifyRd = articleService.actorCanModifyRd(article, loginedMemberId);

		if (actorCanModifyRd.isFail()) {
			return actorCanModifyRd;
		}

		return articleService.modifyArticle(param);

	}

	// 글삭제
	@RequestMapping("/usr/article/doDelete")
	@ResponseBody
	public ResultData doDelete(Integer id, HttpServletRequest req) {
		int loginedMemberId = (int) req.getAttribute("loginedMemberId");

		if (id == null) {
			return new ResultData("F-1", "게시물 아이디를 입력해주세요.");
		}

		Article article = articleService.getArticle(id);

		if (article == null) {
			return new ResultData("F-1", "해당 게시물은 존재하지 않습니다.");
		}

		ResultData actorCanDeleteRd = articleService.actorCanDeleteRd(article, loginedMemberId);

		if (actorCanDeleteRd.isFail()) {
			return actorCanDeleteRd;
		}

		return articleService.deleteArticle(id);
	}

}
