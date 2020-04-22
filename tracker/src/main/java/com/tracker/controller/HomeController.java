package com.tracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	
	
	@RequestMapping("home")
	public String home() {
		
		return "home/home";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}
	
	@RequestMapping("/logout-success")
	public String logout() {
		return "login/logout";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "login/register";
	}
}
