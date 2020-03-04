package com.ssamtuh.crawling.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssamtuh.crawling.dao.face.CrawlingDao;
import com.ssamtuh.crawling.dto.News;
import com.ssamtuh.crawling.service.face.CrawlingService;

@Service
public class CrawlingServiceImpl implements CrawlingService{

	@Autowired CrawlingDao crawlingDao;
	
	//크롤링할 사이트 URL 지정
	private String URL = "http://www.donga.com/news/List"; //동아일보 정치
	
	@Override
	public List<News> getCrawling() {
		
		//크롤링 할 사이트와 연결
		Document doc = null;
		try {
			doc = Jsoup.connect(URL).get();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
		// 원하는 태그를 선택하여 elements객체 안에 삽입
		Elements article_tit = doc.select(".articleList");
//		Elements article_thumb = doc.select(".articleList .thumb");
//		Elements article_date = doc.select(".articleList .date");
		System.out.println(article_tit.toString());
		// elements 객체 안에 들어있는 태그들을 List에 담기
		List<News> list = new ArrayList();
		for(int i=0 ; i<1 ; i++) {
			News news = new News();
			System.out.println(article_tit.toString());
			news.setArticle_title(article_tit);
			list.add(news);
		}
		
//		for(int i=0 ; i<1 ; i++) {
//			News news = new News();
//			System.out.println(article_thumb.toString());
//			news.setArticle_thumbnail(article_thumb);
//			list.add(news);
//		}
//		
//		for(int i=0 ; i<1 ; i++) {
//			News news = new News();
//			System.out.println(article_date.toString());
//			news.setArticle_date(article_date);
//			list.add(news);			
//		}
		return list;
	}

	
	
}
