package com.ssamtuh.board.dto;

public class Stboardname {
	
	private int stboardname_no;
	private String stboardname_name;
	
	@Override
	public String toString() {
		return "Stboardname [stboardname_no=" + stboardname_no + ", stboardname_name=" + stboardname_name + "]";
	}
	
	public int getStboardname_no() {
		return stboardname_no;
	}
	public void setStboardname_no(int stboardname_no) {
		this.stboardname_no = stboardname_no;
	}
	public String getStboardname_name() {
		return stboardname_name;
	}
	public void setStboardname_name(String stboardname_name) {
		this.stboardname_name = stboardname_name;
	}
	
	
	
	
}
