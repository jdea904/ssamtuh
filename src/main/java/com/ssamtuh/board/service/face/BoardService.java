package com.ssamtuh.board.service.face;

import java.util.List;

import com.ssamtuh.board.dto.Stboard;
import com.ssamtuh.board.dto.Stboardname;
import com.ssamtuh.board.util.Paging;

public interface BoardService {
	
	/*
	 * 게시글 top5 불러오기
	 * 
	 * @Param 게시판 번호
	 * @Return 게시글 오름차순 TOP 5
	 */
	public List<Stboard> getBoardTopFive(Stboardname board_no);
	
	/*
	 * 해당 게시판의 게시글 수 불러오기
	 * 
	 * @Param 게시판 번호
	 * @Return 해당 게시판의 총 게시글 수
	 */
	public Paging getPagingByboardname_no(Stboard stboardname_no, Paging param);
	
	/*
	 * 해당 게시판의 전체 게시글 불러오기
	 * 
	 * @stboardname_no 게시판 번호
	 * @paging 페이징 정보
	 * @return 해당 게시판의 전체 게시글
	 */
	public List<Stboard> getBoardListByboardname_no(Stboard stboardname_no, Paging paging);
	
	/*
	 * 해당 게시판의 이름 불러오기
	 * 
	 * @param 게시판 번호
	 * @return 게시판 이름
	 */
	public Stboardname getBoardnameByBoardname_no(Stboard stboardname_no);
	
	/*
	 * 해당 게시판의 게시글 불러오기
	 * 
	 * @param 게시글 번호
	 * @param 게시판 번호
	 * @return 게시글 정보
	 */
	public Stboard getBoardViewByidx(Stboard stboard);
	
	public void setBoardHit(Stboard stboard);
	
	public void setUserNoInRecommendTable(Stboard stboard);
	
}
