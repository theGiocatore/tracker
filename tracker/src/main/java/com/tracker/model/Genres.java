package com.tracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tblgenre")
public class Genres {

	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="subgenre name")
	private String subGenre;
	
	
	
	public Genres(int id, String name, String subGenre) {
	
		this.id = id;
		this.name = name;
		this.subGenre = subGenre;
	}

	public Genres() {
		
	}

	
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}


	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}


	
	public String getSubGenre() {
		return subGenre;
	}
	public void setSubGenre(String subGenre) {
		this.subGenre = subGenre;
	}			
	
}
