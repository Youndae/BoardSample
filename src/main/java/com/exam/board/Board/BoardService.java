package com.exam.board.Board;

import java.util.List;

public interface BoardService {

	public List<BoardVO> boardList(BoardVO boardVO) throws Exception;
	
	public void insertBoard(BoardVO boardVO) throws Exception;
	
	public void updateBoard(BoardVO boardVO) throws Exception;
	
	public void deleteBoard(BoardVO boardVO) throws Exception;
	
	public BoardVO boardDetail(BoardVO boardVO) throws Exception;
}
