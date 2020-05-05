package com.tracker.service;

import org.springframework.stereotype.Service;
import com.tracker.model.Users;

@Service
public interface RegisterService {

	public Users save(Users user);
	
	Users findByUsername(String username);
	
	Users findByEmail(String email);
	
	Users findByPassword(String password);
	
	String findLoggedInUsername();
	
	public Users get(Integer id);
	
	void autoLogin(String username, String password);
}
