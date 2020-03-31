package com.tracker.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tracker.dao.GenresDao;
import com.tracker.model.Genres;

@Service
public class GenresServiceImpl implements GenresService {

	@Autowired
	public GenresDao genresDao;
	
	@Override
	public List<Genres> listAll() {
		// TODO Auto-generated method stub
		return genresDao.findAll();
	}

	@Override
	public Genres save(Genres genres) {
		// TODO Auto-generated method stub
		return genresDao.save(genres);
	}

	@Override
	public Genres update(int id, Genres genres) {
		// TODO Auto-generated method stub
		Genres existingGenres = genresDao.getOne(id);
		BeanUtils.copyProperties(genres, existingGenres,"id");
		return genresDao.saveAndFlush(existingGenres);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		genresDao.deleteById(id);
	}

	@Override
	public Genres get(int id) {
		// TODO Auto-generated method stub
		return genresDao.getOne(id);
	}

}
