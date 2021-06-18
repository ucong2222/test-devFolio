package com.sbs.devFolio.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrHomeController extends BaseController {
	@Autowired
	private UsrArticleController usrArticleController;

	@RequestMapping("/usr/home/main")
	public String showMain(HttpServletRequest req) {
		return usrArticleController.showPortFolio(1, req);
	}

}
