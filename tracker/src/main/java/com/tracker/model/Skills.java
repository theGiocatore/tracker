package com.tracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tblskills")
public class Skills {

	@Id
	@Column(name="id")
	private int id;
	@Column(name="name")
	private String name;
	
	
	public Skills(int id, String name) {

		this.id = id;
		this.name = name;
	}

	public Skills() {
		
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
	
}
