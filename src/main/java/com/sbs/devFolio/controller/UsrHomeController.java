package com.sbs.devFolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrHomeController {

	@RequestMapping("/usr/home/main")
	public String showMain() {
		return "/usr/pages/portFolio";
	}
	
	@RequestMapping("/usr/pages/portFolio")
	public String showPortFolio() {
		return "/usr/pages/portFolio";
	}
}
