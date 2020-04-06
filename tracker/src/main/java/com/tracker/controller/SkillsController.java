package com.tracker.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.tracker.model.Skills;
import com.tracker.service.SkillsService;

@Controller
@RequestMapping
public class SkillsController {
	
	@Autowired
	public SkillsService skillsService;
	
	@RequestMapping("skillsList")
	public String skills(HttpServletRequest request) {
		request.setAttribute("skills", skillsService.listAll());
		return "skills/skillsList";
	
	}
	@RequestMapping("/delete-skill")
	public String delete(@RequestParam int id, HttpServletRequest request) {
		skillsService.delete(id);
		request.setAttribute("skills", skillsService.listAll());
		return "redirect:skillsList";
	}
	
	@PostMapping("/save-skill")
	public String save(@ModelAttribute Skills skills, BindingResult bindingresult, HttpServletRequest request) {
		skillsService.save(skills);
		return "redirect:skillsList";
	}
	

	@RequestMapping("/edit-skill/{id}")
	public String edit(@RequestParam int id,Skills skills, HttpServletRequest request) {
		request.setAttribute("skills", skillsService.update(id, skills));
		return "redirect:skillsList";
	}
	
	@RequestMapping ("skillsList/{id}")
	public ResponseEntity<Skills> get(@PathVariable Integer id) {
		Skills skill = skillsService.get(id);	
			if (skill==null) {
				return ResponseEntity.notFound().build() ;
		}
			return ResponseEntity.ok().body(skill);
	}

	
	}
