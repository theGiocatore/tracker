package com.tracker.service;

import org.springframework.stereotype.Service;
import com.tracker.model.Users;

@Service
public interface RegisterService {

	public Users save(Users user);
	
	
}
