package com.tracker.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.tracker.model.Users;

public interface UserDao extends JpaRepository<Users, Integer> {

	Users findByUsername(String username);
}
