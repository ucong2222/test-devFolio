package com.sbs.devFolio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartRequest;

import com.sbs.devFolio.dto.ResultData;
import com.sbs.devFolio.service.GenFileService;

@Controller
public class CommonGenFileController extends BaseController {
	@Autowired
	private GenFileService genFileService;

	@RequestMapping("/common/genFile/doUpload")
	@ResponseBody
	public ResultData doUpload(MultipartRequest multipartRequest) {
		return genFileService.saveFiles(multipartRequest);
	}
}
