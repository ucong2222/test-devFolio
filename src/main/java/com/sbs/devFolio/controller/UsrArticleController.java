package com.sbs.devFolio.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.devFolio.dto.Article;
import com.sbs.devFolio.dto.ResultData;
import com.sbs.devFolio.service.ArticleService;
import com.sbs.devFolio.util.Util;

@Controller
public class UsrArticleController {
	@Autowired
	private ArticleService articleService;

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
		
		if ( article == null ) {
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

}
