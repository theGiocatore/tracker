package com.tracker.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import com.tracker.model.Users;
import com.tracker.service.RegisterService;

@Component
public class UserValidator implements Validator {

	@Autowired
	private RegisterService registerService;
	
	@Override
	public boolean supports(Class<?> clazz) {
		return Users.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		Users user = (Users) obj;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
		if(user.getUsername().length() < 6 || user.getPassword().length() > 30) {
			errors.rejectValue("username", "Size.userForm.username");
		}
		if(registerService.findByUsername(user.getUsername()) != null) {
			errors.rejectValue("username", "Duplicate.userForm.username");
		}
		
		  ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
	        if (user.getPassword().length() < 6 || user.getPassword().length() > 30) {
	            errors.rejectValue("password", "Size.userForm.password");
	        }

	      
	}

}
