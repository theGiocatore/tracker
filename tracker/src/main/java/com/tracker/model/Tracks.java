package com.tracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


@Table(name = "tbltracks")
@Entity(name = "tbltracks")
@JsonIgnoreProperties({"hibernateLazyInitializer" , "handler"})
public class Tracks {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	@Column(name="track_name")
	private String track_name;
	@Column(name="file_format")
	private String file_format;
	@Column(name="duration")
	private String duration;
	
	
	public Tracks(int id, String track_name, String file_format, String duration) {

		this.id = id;
		this.track_name = track_name;
		this.file_format = file_format;
		this.duration = duration;	
	}
	
	public Tracks() {
		
	}

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public String getTrack_name() {
		return track_name;
	}
	public void setTrack_name(String track_name) {
		this.track_name = track_name;
	}
	
	
	public String getFile_format() {
		return file_format;
	}
	public void setFile_format(String file_format) {
		this.file_format = file_format;
	}
	
	
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	
}
