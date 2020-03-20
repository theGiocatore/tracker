package com.tracker.tracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GenresController {
	
	@RequestMapping("genresList")
	public String genres() {
		
		return "genres/genresList";
	
	
	}
}
