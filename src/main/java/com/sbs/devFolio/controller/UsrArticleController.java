package com.sbs.devFolio.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.devFolio.dto.ResultData;
import com.sbs.devFolio.service.ArticleService;

@Controller
public class UsrArticleController {
	@Autowired
	private ArticleService articleService;

	// 글작성
	@RequestMapping("/usr/article/doWrite")
	@ResponseBody
	public ResultData doWrite(@RequestParam Map<String, Object> param, HttpServletRequest req) {
		int loginedMemberId = (int) req.getAttribute("loginedMemberId");
		
		if(param.get("boardId") == null) {
			return new ResultData("F-1","게시판 번호를 입력해주세요.");
		}
		
		if(param.get("title") == null) {
			return new ResultData("F-1","제목을 입력해주세요.");
		} 
		
		if(param.get("body") == null) {
			return new ResultData("F-1","내용을 입력해주세요");
		} 
		
		param.put("memberId", loginedMemberId);
		
		
		return articleService.addArticle(param);
	}
	
}
