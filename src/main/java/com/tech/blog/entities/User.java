package com.tech.blog.entities;

import java.sql.*;

public class User {

	private int id;
	private String name;
	private String email;
	private String password;
	private String gender;
	private String about;
	private Timestamp dateTime;
	private String profile;
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(int id,String name, String email, String password, String gender, String about, Timestamp dateTime) {
	// TODO Auto-generated constructor stub
		this.id=id;
		this.email=email;
		this.name=name;
		this.password=password;
		this.dateTime=dateTime;
		this.about=about;
		this.gender=gender;
}
	
	public User(String name, String email, String password, String gender, String about) {
		// TODO Auto-generated constructor stub
			
			this.email=email;
			this.name=name;
			this.password=password;
			this.about=about;
			this.gender=gender;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getAbout() {
		return about;
	}
	
	public void setAbout(String about) {
		this.about = about;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public Timestamp getDateTime() {
		return dateTime;
	}
	
	public void setDateTime(Timestamp dateTime) {
		this.dateTime = dateTime;
	}
	
	public void setProfile(String profile) {
		this.profile = profile;
	}
	
	public String getProfile() {
		return profile;
	}
	
}
