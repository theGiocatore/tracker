package com.tracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tracker.service.GenresService;

@Controller
public class GenresController {
	
	public GenresService genresService;
	
	@RequestMapping("genresList")
	public String genres() {
		
		return "genres/genresList";
	
	
	}
}
