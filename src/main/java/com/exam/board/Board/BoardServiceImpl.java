package com.exam.board.Board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.board.Board.BoardVO;

@Service("BoardServiceImpl")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<BoardVO> boardList(BoardVO boardVO) throws Exception {
		List<BoardVO> list = null;
		list = boardDAO.boardList(boardVO);
		return list;
	}

	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		boardDAO.insertBoard(boardVO);
		
	}

	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		boardDAO.updateBoard(boardVO);
		
	}

	@Override
	public void deleteBoard(BoardVO boardVO) throws Exception {
		boardDAO.deleteBoard(boardVO);
		
	}

	@Override
	public BoardVO boardDetail(BoardVO boardVO) throws Exception {
		
		BoardVO resultVO = boardDAO.boardDetail(boardVO);
		
		return resultVO;
	}
}
