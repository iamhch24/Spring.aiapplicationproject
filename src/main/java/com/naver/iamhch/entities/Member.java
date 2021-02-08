package com.naver.iamhch.entities;

public class Member {
	private String email;
	private String name;
	private String password;
	private String phone;
	private int memlevel;
	private String photo;

	
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
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public int getMemlevel() {
		return memlevel;
	}
	
	public void setMemlevel(int memlevel) {
		this.memlevel = memlevel;
	}
	
	public String getPhoto() {
		return photo;
	}
	
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	
	
}
