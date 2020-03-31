package com.tracker.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tracker.model.Tracks;

@Repository
public interface TracksDao extends JpaRepository<Tracks, Integer> {

}
