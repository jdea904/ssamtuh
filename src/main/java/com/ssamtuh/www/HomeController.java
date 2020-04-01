package com.ssamtuh.www;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssamtuh.board.dto.Stboard;
import com.ssamtuh.board.dto.Stboardname;
import com.ssamtuh.board.service.face.BoardService;
import com.ssamtuh.crawling.service.face.CrawlingService;
import com.ssamtuh.user.service.face.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired CrawlingService crawlingService;
	@Autowired UserService userService;
	@Autowired BoardService boardService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public void home(Locale locale, Model model) {
	
		Stboardname board_no = new Stboardname();
		board_no.setStboardname_no(1);
		
		List<Stboard> boardList = boardService.getBoardTopFive(board_no);

		model.addAttribute("boardList", boardList);
	}
	
}
