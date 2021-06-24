package com.sbs.devFolio.controller;

import javax.servlet.http.HttpServletRequest;

import com.sbs.devFolio.dto.ResultData;

public class BaseController {
	protected String msgAndBack(HttpServletRequest req, String msg) {
		req.setAttribute("historyBack", true);
		req.setAttribute("msg", msg);
		return "common/redirect";
	}

	protected String msgAndReplace(HttpServletRequest req, String msg, String redirectUrl) {
		req.setAttribute("redirectUrl", redirectUrl);
		req.setAttribute("msg", msg);
		return "common/redirect";
	}
	
	protected String json(HttpServletRequest req, ResultData resultData) {
		req.setAttribute("data", resultData);
		return "common/json";
	}
}
