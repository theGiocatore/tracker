package com.tracker.service;

import com.tracker.model.Genres;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public interface GenresService {

	public List<Genres> listAll();

	public Genres save(Genres genres);

	public Genres update(int id, Genres genres);

	public void delete(int id);

	public Genres get(Integer id);
}
