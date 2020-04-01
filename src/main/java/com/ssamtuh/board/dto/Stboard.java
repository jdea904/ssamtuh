package com.ssamtuh.board.dto;

import java.util.Date;

public class Stboard {

	private int stboard_idx;
	private String stboard_title;
	private String stboard_content;
	private int stboard_hit;
	private String stboard_category;
	private int stboard_recommend;
	private int stboard_report;
	private Date stboard_date;
	private int stboardname_no;
	private int stuser_no;
	
	private String stuser_nick;
	
	@Override
	public String toString() {
		return "Stboard [stboard_idx=" + stboard_idx + ", stboard_title=" + stboard_title + ", stboard_content="
				+ stboard_content + ", stboard_hit=" + stboard_hit + ", stboard_category=" + stboard_category
				+ ", stboard_recommend=" + stboard_recommend + ", stboard_report=" + stboard_report + ", stboard_date="
				+ stboard_date + ", stboardname_no=" + stboardname_no + ", stuser_no=" + stuser_no + ", stuser_nick="
				+ stuser_nick + "]";
	}
	
	public String getStuser_nick() {
		return stuser_nick;
	}

	public void setStuser_nick(String stuser_nick) {
		this.stuser_nick = stuser_nick;
	}
	
	public int getStboard_idx() {
		return stboard_idx;
	}
	public void setStboard_idx(int stboard_idx) {
		this.stboard_idx = stboard_idx;
	}
	public String getStboard_title() {
		return stboard_title;
	}
	public void setStboard_title(String stboard_title) {
		this.stboard_title = stboard_title;
	}
	public String getStboard_content() {
		return stboard_content;
	}
	public void setStboard_content(String stboard_content) {
		this.stboard_content = stboard_content;
	}
	public int getStboard_hit() {
		return stboard_hit;
	}
	public void setStboard_hit(int stboard_hit) {
		this.stboard_hit = stboard_hit;
	}
	public String getStboard_category() {
		return stboard_category;
	}
	public void setStboard_category(String stboard_category) {
		this.stboard_category = stboard_category;
	}
	public int getStboard_recommend() {
		return stboard_recommend;
	}
	public void setStboard_recommend(int stboard_recommend) {
		this.stboard_recommend = stboard_recommend;
	}
	public int getStboard_report() {
		return stboard_report;
	}
	public void setStboard_report(int stboard_report) {
		this.stboard_report = stboard_report;
	}
	public Date getStboard_date() {
		return stboard_date;
	}
	public void setStboard_date(Date stboard_date) {
		this.stboard_date = stboard_date;
	}
	public int getStboardname_no() {
		return stboardname_no;
	}
	public void setStboardname_no(int stboardname_no) {
		this.stboardname_no = stboardname_no;
	}
	public int getStuser_no() {
		return stuser_no;
	}
	public void setStuser_no(int stuser_no) {
		this.stuser_no = stuser_no;
	}
	
	
	
	
	
	
	
}
