package com.tracker.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tracker.dao.SkillsDao;
import com.tracker.model.Skills;

@Service
public class SkillsServiceImpl implements SkillsService {

	@Autowired
	public SkillsDao skillsDao;
	
	@Override
	public List<Skills> listAll() {
		List<Skills> skills = new ArrayList <Skills>();
		for(Skills skill : skillsDao.findAll()) {
			skills.add(skill);
	}
		return skills;
	}

	public Skills save(Skills skills) {
		return skillsDao.save(skills);
	}

	@Override
	public Skills update(int id, Skills skills) {
		return skillsDao.getOne(id);
	}

	@Override
	public void delete(int id) {
		skillsDao.deleteById(id);
		
	}

	@Override
	public Skills get(int id) {
		return skillsDao.getOne(id);
	}


}
