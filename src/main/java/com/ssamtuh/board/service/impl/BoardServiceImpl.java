package com.ssamtuh.board.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssamtuh.board.dao.face.BoardDao;
import com.ssamtuh.board.dto.Stboard;
import com.ssamtuh.board.dto.Stboardname;
import com.ssamtuh.board.service.face.BoardService;
import com.ssamtuh.board.util.Paging;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired BoardDao boardDao;

	@Override
	public List<Stboard> getBoardTopFive(Stboardname board_no) {
		
		List<Stboard> boardList = boardDao.selectBoardTopFiveByBoardno(board_no);
		
		return boardList;
	}

	@Override
	public List<Stboard> getBoardListByboardname_no(Stboard stboardname_no, Paging paging) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("stboardname_no",stboardname_no.getStboardname_no());
		map.put("startNo", paging.getStartNo());
		map.put("endNo", paging.getEndNo());
		
		List<Stboard> boardList = boardDao.selectBoardByboardname_no(map);
		
		return boardList;
	}

	@Override
	public Stboardname getBoardnameByBoardname_no(Stboard stboardname_no) {
		
		Stboardname boardName = boardDao.selectBoardNameByBoard_no(stboardname_no);
		
		return boardName;
	}

	@Override
	public Paging getPagingByboardname_no(Stboard stboardname_no, Paging param) {
		
		int totalCount = boardDao.selectBoardCountByboard_no(stboardname_no);
		
		Paging paging = new Paging(totalCount, param.getCurPage());
		
		return paging;
	}

	@Override
	public Stboard getBoardViewByidx(Stboard stboard) {
		
		Stboard boardView = boardDao.selectBoardViewByIdx(stboard);
		
		return boardView;
	}

	@Override
	public void setBoardHit(Stboard stboard) {
		
		boardDao.updateBoardHitCount(stboard);
		
	}

	@Override
	public void setUserNoInRecommendTable(Stboard stboard) {
		
		
		
	}
	
}
