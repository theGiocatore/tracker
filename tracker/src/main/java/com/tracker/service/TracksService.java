package com.tracker.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.tracker.model.Tracks;

@Service
public interface TracksService  {
			
		public List<Tracks> listAll();
		
		public  Tracks save(Tracks tracks);
		
		public  Tracks update(int id, Tracks tracks);
		
	    public  void delete(int id);
	    
	    public  Tracks get(int id);
		
}
