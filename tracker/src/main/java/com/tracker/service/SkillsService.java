package com.tracker.service;

import com.tracker.model.Skills;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface SkillsService {

	public List<Skills> listAll();

	public Skills save(Skills skills);

	public Skills update(int id, Skills skills);

	public void delete(int id);

	public Skills get(Integer id);
}
