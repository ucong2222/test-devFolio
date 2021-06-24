package com.sbs.devFolio.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sbs.devFolio.dto.Article;
import com.sbs.devFolio.dto.ResultData;
import com.sbs.devFolio.service.ArticleService;
import com.sbs.devFolio.service.LikeService;

@Controller
public class UsrLikeController extends BaseController {
	@Autowired
	private LikeService likeService;
	@Autowired
	private ArticleService articleService;

	@RequestMapping("usr/like/doLike")
	public String dolike(HttpServletRequest req, String relTypeCode, Integer relId) {
		int actorId = (int) req.getAttribute("loginedMemberId");

		String resultCode = null;
		String msg = null;

		System.out.println("relTypeCode" + relTypeCode);
		System.out.println("relId" + relId);
		System.out.println("actorId" + actorId);
		// 이미 좋아요 누른 상태인지 확인
		boolean alreadyDoLike = likeService.alreadyDoLike(relTypeCode, relId, actorId, 1);

		if (alreadyDoLike == false) {
			resultCode = "S-1";
			msg = "좋아요 처리";
			likeService.setLikePoint(relTypeCode, relId, actorId, 1, 1);
		} else {
			resultCode = "S-2";
			msg = "좋아요 취소";
			likeService.setLikePoint(relTypeCode, relId, actorId, 1, 0);
		}

		int likePoint = 0;

		if (relTypeCode.equals("article")) {
			Article article = articleService.getForPrintArticle(relId);
			likePoint = article.getExtra__likePoint();
		}

		return json(req,
				new ResultData(resultCode, msg, "relTypeCode", relTypeCode, "relId", relId, "likePoint", likePoint));
	}

}
