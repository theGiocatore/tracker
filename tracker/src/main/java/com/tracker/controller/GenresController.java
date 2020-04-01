package com.tracker.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.tracker.model.Genres;
import com.tracker.service.GenresService;

@Controller
@RequestMapping
public class GenresController {
	
	@Autowired
	public GenresService genresService;
	
	@RequestMapping("genresList")
	public String genres(HttpServletRequest request) {
		request.setAttribute("genres", genresService.listAll());
		return "genres/genresList";
	
	}
	@RequestMapping("/delete-genre")
	public String delete(@RequestParam int id, HttpServletRequest request) {
		genresService.delete(id);
		request.setAttribute("genres", genresService.listAll());
		return "redirect:genresList";
	}
	
	@PostMapping("/save-genre")
	public String save(@ModelAttribute Genres genres, BindingResult bindingresult, HttpServletRequest request) {
		genresService.save(genres);
		return "redirect:genresList";
	}
	

	@RequestMapping("/edit-genre")
	public String edit(@RequestParam int id,Genres genres, HttpServletRequest request) {
		request.setAttribute("genres", genresService.update(id, genres));
		return "redirect:genresList";
	}
	
	}
