package com.tracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="tblgenre")
@Table(name="tblgenre")
public class Genres {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="subgenre_name")
	private String subgenre_name;
	
	
	
	public Genres(int id, String name, String subgenre_name) {
	
		this.id = id;
		this.name = name;
		this.subgenre_name = subgenre_name;
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


	
	public String getSubgenre_name() {
		return subgenre_name;
	}
	public void setSubgenre_name(String subgenre_name) {
		this.subgenre_name = subgenre_name;
	}			
	
}
