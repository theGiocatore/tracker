package com.tracker.service;

import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tracker.dao.TracksDao;
import com.tracker.model.Tracks;

@Service
@Transactional
public class TracksServiceImpl implements TracksService {

	@Autowired
	public TracksDao tracksDao;
	
	

	public List<Tracks> listAll() {
		List<Tracks> tracks = new ArrayList <Tracks>();
		for(Tracks track : tracksDao.findAll()) {
		tracks.add(track);
	}
		return tracks;
	}
	
	public Tracks save(Tracks tracks) {
		return tracksDao.save(tracks);
	}

	
	public Tracks update(int id, Tracks tracks) {
		return tracksDao.saveAndFlush(tracks);
	}


	public void delete(int id) {
		tracksDao.deleteById(id);
		
	}

	
	public Tracks get(Integer id) {
		return tracksDao.getOne(id);
			
		
	}

}