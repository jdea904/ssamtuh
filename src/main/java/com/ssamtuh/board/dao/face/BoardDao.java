package com.ssamtuh.board.dao.face;

import java.util.List;
import java.util.Map;

import com.ssamtuh.board.dto.Stboard;
import com.ssamtuh.board.dto.Stboardname;

public interface BoardDao {

	public List<Stboard> selectBoardTopFiveByBoardno(Stboardname board_no);
	
	public List<Stboard> selectBoardByboardname_no(Map map);
	
	public Stboardname selectBoardNameByBoard_no(Stboard stboardname_no);
	
	public int selectBoardCountByboard_no(Stboard stboardname_no);
	
	public Stboard selectBoardViewByIdx(Stboard board);
	
	public void updateBoardHitCount(Stboard stboard);
	
}
