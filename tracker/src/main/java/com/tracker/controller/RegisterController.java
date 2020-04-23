package com.tracker.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.tracker.model.Users;
import com.tracker.service.RegisterService;
import com.tracker.validator.UserValidator;



@Controller
public class RegisterController {
	
	@Autowired
	public RegisterService registerService;
	
	@Autowired
	private UserValidator userValidator;
	
	@Autowired
	public PasswordEncoder passwordEncoder;

	@PostMapping("/save-user")
	public String save(@ModelAttribute("userForm") Users userForm, BindingResult bindingresult, HttpServletRequest request) {
		userValidator.validate(userForm, bindingresult);
		
		if(bindingresult.hasErrors()) {
			return "redirect:register";
		}
		registerService.save(userForm);
//		registerService.autoLogin(userForm.getUsername(), userForm.getPassword());
		return "redirect:home";
	}
	
}
