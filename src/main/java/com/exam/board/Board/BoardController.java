package com.exam.board.Board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	
	@Autowired
	private BoardMapper boardMapper;
	
	@RequestMapping("/boardList")
	public String boardList(BoardVO boardVO, Model model) throws Exception{
		
		List<BoardVO> list = boardMapper.boardList(boardVO);
		
		model.addAttribute("list", list);
		
		return "boardList";
	}
	
	@RequestMapping("/insertform")
	public String insertForm() throws Exception{
		
		
		return "insertForm";
	}
	
	@RequestMapping("/insertBoard")
	public String insertBoard(@ModelAttribute("boardVO") BoardVO boardVO) throws Exception{
		
		boardMapper.insertBoard(boardVO);
		
		return "redirect:/boardList";
	}
	
	@RequestMapping("/boardDetail")
	public String boardDetail(@ModelAttribute("boardVO") BoardVO boardVO, Model model, HttpServletRequest request) throws Exception{
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		System.out.println("//////////////boardNo : "+boardNo+"////////////");
		
		boardVO.setBoardNo(boardNo);
		
		BoardVO detail = boardMapper.boardDetail(boardVO);
		
		model.addAttribute("detail", detail);
		
		return "board/boardDetail";
	}
	
	@RequestMapping("/updateform")
	public String updateform(@ModelAttribute("boardVO") BoardVO boardVO, Model model) throws Exception{
		
		try {
			boardMapper.updateBoard(boardVO);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/boardList";
		
	}
}
