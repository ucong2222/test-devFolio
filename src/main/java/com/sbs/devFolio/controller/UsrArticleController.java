package com.sbs.devFolio.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.sbs.devFolio.dto.Article;
import com.sbs.devFolio.dto.Board;
import com.sbs.devFolio.dto.GenFile;
import com.sbs.devFolio.dto.ResultData;
import com.sbs.devFolio.service.ArticleService;
import com.sbs.devFolio.service.GenFileService;
import com.sbs.devFolio.service.LikeService;
import com.sbs.devFolio.util.Util;

@Controller
public class UsrArticleController extends BaseController {
	@Autowired
	private ArticleService articleService;
	@Autowired
	private LikeService likeService;
	@Autowired
	private GenFileService genFileService;

	// 글작성 JSP
	@RequestMapping("usr/article/write")
	public String showWrite(Integer boardId, HttpServletRequest req) {

		if (boardId == null) {
			return msgAndBack(req, "게시판 번호를 입력해주세요.");
		}

		Board board = articleService.getBoard(boardId);

		if (board == null) {
			return msgAndBack(req, "해당 게시판은 존재하지 않습니다.");
		}

		return "usr/article/write";
	}

	// 글작성
	@RequestMapping("usr/article/doWrite")
	public String doWrite(@RequestParam Map<String, Object> param, HttpServletRequest req,
			MultipartRequest multipartRequest) {
		int loginedMemberId = (int) req.getAttribute("loginedMemberId");

		if (param.get("boardId") == null) {
			return msgAndBack(req, "게시판 번호를 입력해주세요.");
		}

		if (param.get("title") == null) {
			return msgAndBack(req, "제목을 입력해주세요.");
		}

		if (param.get("body") == null) {
			return msgAndBack(req, "내용을 입력해주세요");
		}

		param.put("memberId", loginedMemberId);

		ResultData addArticleRd = articleService.addArticle(param);

		int newArticleId = (int) addArticleRd.getBody().get("id");

		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();

		for (String fileInputName : fileMap.keySet()) {
			// 예시 : file__article__0__common__attachment__1
			MultipartFile multipartFile = fileMap.get(fileInputName);

			if (multipartFile.isEmpty() == false) {
				genFileService.save(multipartFile, newArticleId);
			}

		}

		return msgAndReplace(req, "작성이 완료되었습니다.", "../article/detail?id=" + newArticleId);
	}

	// 글리스트
	@RequestMapping("usr/article/list")
	public String showList(@RequestParam(defaultValue = "1") int boardId, HttpServletRequest req) {
		Board board = articleService.getBoard(boardId);

		if (board == null) {
			return msgAndBack(req, "존재하지 않는 게시판입니다.");
		}

		List<Article> articles = articleService.getForPrintArticles(board.getId());

		req.setAttribute("board", board);
		req.setAttribute("articles", articles);

		return "usr/article/list";
	}

	@RequestMapping("/usr/pages/portFolio")
	public String showPortFolio(@RequestParam(defaultValue = "1") int boardId, HttpServletRequest req) {
		Board board = articleService.getBoard(boardId);

		if (board == null) {
			return msgAndBack(req, "존재하지 않는 게시판입니다.");
		}

		List<Article> articles = articleService.getForPrintArticles(board.getId());

		for ( Article article : articles ) {
			GenFile genFile = genFileService.getGenFile("article", article.getId(), "common", "attachment", 1);

			if ( genFile != null ) {
				article.setExtra__thumbImg(genFile.getForPrintUrl());
			} else {
				article.setExtra__thumbImg("/resource/usr/img/portFolio/thumbImg1.png");
			}
		}
		
		req.setAttribute("board", board);
		req.setAttribute("articles", articles);

		return "/usr/pages/portFolio";
	}

	// 글상세
	@RequestMapping("usr/article/detail")
	public String showDetail(Integer id, HttpServletRequest req) {
		if (id == null) {
			return msgAndBack(req, "게시물 아이디를 입력해주세요.");
		}

		// 상세페이지 접속 시 조회수 증가
		articleService.increaseHit(id);

		Article article = articleService.getForPrintArticle(id);

		if (article == null) {
			return msgAndBack(req, "해당 게시물은 존재하지 않습니다.");
		}

		boolean alreadyDoLike = likeService.alreadyDoLike("article", id, article.getMemberId(), 1);

		req.setAttribute("article", article);
		req.setAttribute("alreadyDoLike", alreadyDoLike);

		return "usr/article/detail";
	}

	// 글수정 JSP
	@RequestMapping("usr/article/modify")
	public String showModify(Integer id, HttpServletRequest req) {
		int loginedMemberId = (int) req.getAttribute("loginedMemberId");
		if (id == null) {
			return msgAndBack(req, "수정할 게시판 번호를 입력해주세요.");
		}

		Article article = articleService.getForPrintArticle(id);

		if (article == null) {
			return msgAndBack(req, "해당 게시물은 존재하지 않습니다.");
		}

		List<GenFile> files = genFileService.getGenFiles("article", article.getId(), "common", "attachment");
		
		Map<String, GenFile> filesMap = new HashMap<>();
		
		for ( GenFile file : files ) {
			filesMap.put(file.getFileNo() + "", file);
		}
		
		article.getExtraNotNull().put("file__common__attachment", filesMap);

		ResultData actorCanModifyRd = articleService.actorCanModifyRd(article, loginedMemberId);

		if (actorCanModifyRd.isFail()) {
			String msg = actorCanModifyRd.getMsg();
			return msgAndBack(req, msg);
		}

		req.setAttribute("article", article);

		return "usr/article/modify";
	}

	// 글수정
	@RequestMapping("usr/article/doModify")
	public String doModify(@RequestParam Map<String, Object> param, HttpServletRequest req) {
		int loginedMemberId = (int) req.getAttribute("loginedMemberId");

		int id = Util.getAsInt(param.get("id"), 0);

		if (id == 0) {
			return msgAndBack(req, "게시물 아이디를 입력해주세요.");
		}

		Article article = articleService.getArticle(id);

		if (article == null) {
			return msgAndBack(req, "해당 게시물은 존재하지 않습니다.");
		}

		if (Util.isEmpty(param.get("title"))) {
			return msgAndBack(req, "제목을 입력해주세요.");
		}

		if (Util.isEmpty(param.get("body"))) {
			return msgAndBack(req, "내용을 입력해주세요.");
		}

		ResultData actorCanModifyRd = articleService.actorCanModifyRd(article, loginedMemberId);

		if (actorCanModifyRd.isFail()) {
			String msg = actorCanModifyRd.getMsg();
			return msgAndBack(req, msg);
		}

		articleService.modifyArticle(param);

		return msgAndReplace(req, "게시물이 수정되었습니다.", "../article/detail?id=" + id);

	}

	// 글삭제
	@RequestMapping("/usr/article/doDelete")
	public String doDelete(Integer id, HttpServletRequest req) {
		int loginedMemberId = (int) req.getAttribute("loginedMemberId");

		if (id == null) {
			return msgAndBack(req, "게시물 아이디를 입력해주세요.");
		}

		Article article = articleService.getForPrintArticle(id);

		if (article == null) {
			return msgAndBack(req, "해당 게시물은 존재하지 않습니다.");
		}

		ResultData actorCanDeleteRd = articleService.actorCanDeleteRd(article, loginedMemberId);

		if (actorCanDeleteRd.isFail()) {
			String msg = actorCanDeleteRd.getMsg();
			return msgAndBack(req, msg);
		}

		articleService.deleteArticle(id);

		return msgAndReplace(req, "게시물이 삭제되었습니다.", "../pages/" + article.getExtra__boardCode());
	}

}
