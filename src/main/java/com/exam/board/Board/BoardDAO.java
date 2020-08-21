package com.exam.board.Board;

import java.util.List;

public interface BoardDAO {

	List<BoardVO> boardList(BoardVO boardVO) throws Exception;
	
	void insertBoard(BoardVO boardVO) throws Exception;
	
	void updateBoard(BoardVO boardVO) throws Exception;
	
	void deleteBoard(BoardVO boardVO) throws Exception;
	
	BoardVO boardDetail(BoardVO boardVO) throws Exception;
}
