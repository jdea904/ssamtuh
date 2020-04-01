package com.ssamtuh.www;

import java.util.List;


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
import com.ssamtuh.board.util.Paging;

@Controller
public class boardController {

private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired BoardService boardService;

	@RequestMapping(value="/board/list", method=RequestMethod.GET)
	public void list(Stboard stboard,Model model, Stboardname stboardname, Paging param) {
		
		Paging paging = boardService.getPagingByboardname_no(stboard, param);
		
		List<Stboard> boardList = boardService.getBoardListByboardname_no(stboard,paging);
		
		Stboardname boardName = boardService.getBoardnameByBoardname_no(stboard);
		
		model.addAttribute("paging", paging); //페이징정보
		model.addAttribute("boardName", boardName); //게시판 이름
		model.addAttribute("boardList", boardList); //게시글 목록
		
	}
	
	@RequestMapping(value="/board/view",method=RequestMethod.GET)
	public void view(Stboard stboard, Model model, Stboardname stboardname, Paging param) {
		
		
		boardService.setBoardHit(stboard);
		
		Paging paging = boardService.getPagingByboardname_no(stboard, param);
		
		List<Stboard> boardList = boardService.getBoardListByboardname_no(stboard,paging);
		
		Stboardname boardName = boardService.getBoardnameByBoardname_no(stboard);
		
		Stboard boardView = boardService.getBoardViewByidx(stboard);
				
		model.addAttribute("paging", paging); //페이징정보
		model.addAttribute("boardName", boardName); //게시판 이름
		model.addAttribute("boardList", boardList); //게시글 목록
		model.addAttribute("boardView", boardView); //해당 게시글 정보
		
		
	}
	
	@RequestMapping(value="/board/recommend", method=RequestMethod.GET)
	public void recommend(Stboard stboard_idx) {
		
		boardService.setUserNoInRecommendTable(stboard_idx);
		
	}
	
}
