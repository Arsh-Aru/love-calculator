package com.aravind.lc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aravind.lc.entity.UserRegisterEntity;

@Controller
public class RegistrationController {
	@RequestMapping("/register")
	public String signInPage(@ModelAttribute("registerInfo") UserRegisterEntity entity) {
		return "register";
	}

	@RequestMapping("/register-success")
	public String registerSuccess(@ModelAttribute("res") UserRegisterEntity entity) {
		return "register-success";
	}
}
