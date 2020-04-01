package com.ssamtuh.www;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssamtuh.board.dto.Stboard;
import com.ssamtuh.board.dto.Stboardname;

@Controller
public class mainController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="/main/main_default", method=RequestMethod.GET)
	public void main_default(Stboard stboard, Stboardname stboardname,Model model) {
		
		System.out.println("main_default : " + stboardname.getStboardname_no());
		
		model.addAttribute(stboardname.getStboardname_no());
	}
	
	@RequestMapping(value="/main/main_politics", method=RequestMethod.GET)
	public void main_politics(Stboard stboard, Stboardname stboardname) {
		
	}
	
	@RequestMapping(value="/main/main_economy", method=RequestMethod.GET)
	public void main_economy(Stboard stboard, Stboardname stboardname) {
		
	}
	
	@RequestMapping(value="/main/main_movie", method=RequestMethod.GET)
	public void main_movie(Stboard stboard, Stboardname stboardname) {
		
	}
	
	@RequestMapping(value="/main/main_fashion", method=RequestMethod.GET)
	public void main_fashion(Stboard stboard, Stboardname stboardname) {
		
	}
	
	@RequestMapping(value="/main/main_travel", method=RequestMethod.GET)
	public void main_travel(Stboard stboard, Stboardname stboardname) {
		
	}
	
}
