package com.ssamtuh.crawling.dto;

import org.jsoup.select.Elements;

public class News {

	private String article_title;
	private String article_date;
	private String article_thumbnail;
		
	@Override
	public String toString() {
		return "News [article_title=" + article_title + ", article_date=" + article_date + ", article_thumbnail="
				+ article_thumbnail + "]";
	}
	public String getArticele_title() {
		return article_title;
	}
	public void setArticele_title(String articele_title) {
		this.article_title = articele_title;
	}
	public String getArticle_date() {
		return article_date;
	}
	public void setArticle_date(String article_date) {
		this.article_date = article_date;
	}
	public String getArticle_thumbnail() {
		return article_thumbnail;
	}
	public void setArticle_thumbnail(String article_thumbnail) {
		this.article_thumbnail = article_thumbnail;
	}
	public void setArticle_title(Elements article_title) {
		// TODO Auto-generated method stub
		
	}
	public void setArticle_thumbnail(Elements article_thumb) {
		// TODO Auto-generated method stub
		
	}
	public void setArticle_date(Elements article_date) {
		// TODO Auto-generated method stub
		
	}
	
	
	
	

	
	
	
	
}
