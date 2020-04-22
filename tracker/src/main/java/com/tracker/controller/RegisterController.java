package com.tracker.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.tracker.model.Users;
import com.tracker.service.RegisterService;



@Controller
public class RegisterController {
	
	@Autowired
	public RegisterService registerService;

	@PostMapping("/save-user")
	public String save(@ModelAttribute Users user, BindingResult bindingresult, HttpServletRequest request) {
		registerService.save(user);
		return "redirect:home";
	}
	
}
