package com.tracker.service;

import java.util.ArrayList;
import java.util.List;
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
		List<Genres> genres = new ArrayList <Genres>();
		for(Genres genre : genresDao.findAll()) {
		genres.add(genre);
	}
		return genres;
	}

	public Genres save(Genres genres) {
		return genresDao.save(genres);
	}

	@Override
	public Genres update(int id, Genres genres) {
		return genresDao.getOne(id);
	}

	@Override
	public void delete(int id) {
		genresDao.deleteById(id);
		
	}

	@Override
	public Genres get(int id) {
		return genresDao.getOne(id);
	}


}
