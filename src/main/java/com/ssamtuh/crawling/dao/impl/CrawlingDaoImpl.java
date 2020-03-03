package com.ssamtuh.crawling.dao.impl;

import com.ssamtuh.crawling.dao.face.CrawlingDao;

public class CrawlingDaoImpl implements CrawlingDao{
	
	@Override
	public String getParameter(int PAGE) {
		
		return "99814638/" + PAGE;
	}

}
