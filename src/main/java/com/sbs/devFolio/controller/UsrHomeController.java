package com.sbs.devFolio.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrHomeController extends BaseController {
	@Autowired
	private UsrArticleController usrArticleController;

	/*	
	HttpServletRequest 란?
	- Http프로토콜의 request 정보를 서블릿에게 전달하기 위한 목적으로 사용
	- Header의 정보, Parameter, Cookie, Url, Uri 등의 정보를 읽어들이는 메소드를 가진 클래스
	- Body의 Stream을 읽어들이는 메소드를 가지고 있음
	
	HttpServletResponse 란?
	- Sevlet은 HttpServletResponse 객체에 Content Type, 응답코드, 응답메세지등을 담아서 전송
	 */
	@RequestMapping("/usr/home/main")
	public String showMain(HttpServletRequest req) {
		return usrArticleController.showPortFolio(1, req);
	}

}
