package com.tracker.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tracker.model.Genres;

@Repository
public interface GenresDao extends JpaRepository<Genres, Integer> {

}
