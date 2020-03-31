package com.tracker.controller;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.tracker.model.Tracks;
import com.tracker.service.TracksService;

@Controller
@RequestMapping
public class TracksController {
	
	@Autowired
	private TracksService trackService;


	@RequestMapping("tracksList")
	public String tracks(HttpServletRequest request) {
		request.setAttribute("tracks", trackService.listAll());
		return "tracks/tracksList";
	
	}
	@RequestMapping("/delete-track")
	public String delete(@RequestParam int id, HttpServletRequest request) {
		trackService.delete(id);
		request.setAttribute("tracks", trackService.listAll());
		return "redirect:tracksList";
	}
	
	@PostMapping("/save-track")
	public String save(@ModelAttribute Tracks track, BindingResult bindingresult, HttpServletRequest request) {
		trackService.save(track);
		return "redirect:tracksList";
	}
	
	
	@GetMapping
	@RequestMapping("{id}")
	public Tracks get(@PathVariable Integer id) {
		return trackService.get(id);
	}

	@RequestMapping("/edit-track")
	public String edit(@RequestParam int id,Tracks tracks, HttpServletRequest request) {
		request.setAttribute("track", trackService.update(id, tracks));
		return "redirect:tracksList";
	}
	
	}

