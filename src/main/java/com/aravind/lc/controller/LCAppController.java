package com.aravind.lc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aravind.lc.entity.UserInfoEntity;

@Controller
public class LCAppController {

	@RequestMapping("/")
	public String showHomePage() {
		return "home-page";
	}
	
//	@RequestMapping("/result-page")
//	public String showResultPage(Model model,@RequestParam String userName,@RequestParam String crushName) {
//		model.addAttribute("userName", userName);
//		model.addAttribute("crushName", crushName);
//		return "result-page";
//	}
	
	/**
	 * showResultPage
	 * @param model here spring injects the object
	 * @param userEntity here spring uses setter injection
	 * @return
	 */
	@RequestMapping("/result-page")
	public String showResultPage(Model model,UserInfoEntity userEntity) {
		model.addAttribute("userInfo", userEntity);
		return "result-page";
	}
	
}
