package com.ssamtuh.user.dto;

import java.util.Date;

public class Stuser {

	private int stuser_no;
	private String stuser_id;
	private String stuser_pw;
	private String stuser_nick;
	private String stuser_gender;
	private int stuser_age;
	private String stuser_loc;
	private Date stuser_date;
	
	@Override
	public String toString() {
		return "Stuser [stuser_no=" + stuser_no + ", stuser_id=" + stuser_id + ", stuser_pw=" + stuser_pw
				+ ", stuser_nick=" + stuser_nick + ", stuser_gender=" + stuser_gender + ", stuser_age=" + stuser_age
				+ ", stuser_loc=" + stuser_loc + ", stuser_date=" + stuser_date + "]";
	}
	
	public int getStuser_no() {
		return stuser_no;
	}
	public void setStuser_no(int stuser_no) {
		this.stuser_no = stuser_no;
	}
	public String getStuser_id() {
		return stuser_id;
	}
	public void setStuser_id(String stuser_id) {
		this.stuser_id = stuser_id;
	}
	public String getStuser_pw() {
		return stuser_pw;
	}
	public void setStuser_pw(String stuser_pw) {
		this.stuser_pw = stuser_pw;
	}
	public String getStuser_nick() {
		return stuser_nick;
	}
	public void setStuser_nick(String stuser_nick) {
		this.stuser_nick = stuser_nick;
	}
	public String getStuser_gender() {
		return stuser_gender;
	}
	public void setStuser_gender(String stuser_gender) {
		this.stuser_gender = stuser_gender;
	}
	public int getStuser_age() {
		return stuser_age;
	}
	public void setStuser_age(int stuser_age) {
		this.stuser_age = stuser_age;
	}
	public String getStuser_loc() {
		return stuser_loc;
	}
	public void setStuser_loc(String stuser_loc) {
		this.stuser_loc = stuser_loc;
	}
	public Date getStuser_date() {
		return stuser_date;
	}
	public void setStuser_date(Date stuser_date) {
		this.stuser_date = stuser_date;
	}
	
}
