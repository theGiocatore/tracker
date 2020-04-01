package com.tracker.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tracker.model.Skills;

@Repository
public interface SkillsDao extends JpaRepository<Skills, Integer> {

}
