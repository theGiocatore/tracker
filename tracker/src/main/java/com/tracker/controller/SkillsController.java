package com.tracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SkillsController {
	
	
	@RequestMapping("skillsList")
	public String skills() {
		
		return "skills/skillsList";

	}

	
}
