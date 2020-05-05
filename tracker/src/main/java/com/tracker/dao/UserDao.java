package com.tracker.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.tracker.model.Users;

@Repository
public interface UserDao extends JpaRepository<Users, Integer> {

	Users findByUsername(String username);
	
	Users findByEmail(String email);
	
	Users findByPassword(String password);
}
