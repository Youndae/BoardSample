package com.exam.board.Board;

import java.util.List;

import com.exam.board.Board.BoardVO;

public interface BoardMapper {

	//리스트
	public List<BoardVO> boardList(BoardVO boardVO) throws Exception;
	//등록
	public void insertBoard(BoardVO boardVO) throws Exception;
	//수정
	public void updateBoard(BoardVO boardVO) throws Exception;
	//삭제
	public void deleteBoard(BoardVO boardVO) throws Exception;
	//조회
	public BoardVO boardDetail(BoardVO boardVO) throws Exception;
}
