package com.tracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tracker.UserMeth;
import com.tracker.dao.UserDao;
import com.tracker.model.Users;

@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserDao dao;
	
	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		Users user = dao.findByUsername(username);
		if(user==null)
			throw new UsernameNotFoundException("User not found");
		
			
		return new UserMeth(user);
	}
	

}
