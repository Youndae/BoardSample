package com.exam.board.Board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardDAOService")
public class BoardDAOService implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardVO> boardList(BoardVO boardVO) throws Exception {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		return mapper.boardList(boardVO);
	}

	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		mapper.insertBoard(boardVO);
		
	}

	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		mapper.updateBoard(boardVO);
		
	}

	@Override
	public void deleteBoard(BoardVO boardVO) throws Exception {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		mapper.deleteBoard(boardVO);
		
	}

	@Override
	public BoardVO boardDetail(BoardVO boardVO) throws Exception {
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		return mapper.boardDetail(boardVO);
	}
	
	
}
