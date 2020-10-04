package com.aravind.lc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aravind.lc.entity.UserInfoEntity;
import com.aravind.lc.entity.UserRegisterEntity;

@Controller
public class LCAppController {

	@RequestMapping("/")
	public String showHomePage(Model model) {
		model.addAttribute("userInfo", new UserInfoEntity());
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
	 * 
	 * @param model      here spring injects the object
	 * @param userEntity here spring uses setter injection
	 * @return
	 */
	@RequestMapping("/result-page")
	public String showResultPage(@ModelAttribute("userInfo") UserInfoEntity userEntity) {
		return "result-page";
	}

}
