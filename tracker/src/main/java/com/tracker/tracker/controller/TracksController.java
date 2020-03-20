package com.tracker.tracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TracksController {

	@RequestMapping("tracksList")
	public String tracks() {
		
		return "tracks/tracksList";
	
	
	}
}
