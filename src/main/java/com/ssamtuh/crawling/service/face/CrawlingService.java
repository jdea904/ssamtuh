package com.ssamtuh.crawling.service.face;

import java.util.List;

import com.ssamtuh.crawling.dto.News;

public interface CrawlingService {

	/*
	 * 크롤링 목표의 URL 목록
	 * 
	 * @return - 해당 기사의 idx 값
	 * 
	 */
	public List<News> getCrawling();
	
}
