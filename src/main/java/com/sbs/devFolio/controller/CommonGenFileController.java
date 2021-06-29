package com.sbs.devFolio.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.devFolio.dto.ResultData;

@Controller
public class CommonGenFileController extends BaseController {

	@RequestMapping("/common/genFile/doUpload")
	@ResponseBody
	public ResultData doUpload(HttpServletRequest req) {
		return new ResultData("S-1","업로드 성공","genFileIdsStr","1,2");
	}
}
