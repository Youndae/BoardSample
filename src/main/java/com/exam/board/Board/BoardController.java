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
	private BoardService boardService;
	
	@RequestMapping("/boardList")
	public String boardList(BoardVO boardVO, Model model) throws Exception{
		
		List<BoardVO> list = boardService.boardList(boardVO);
		
		model.addAttribute("list", list);
		
		return "board/boardList";
	}
	
	@RequestMapping("/insertform")
	public String insertForm() throws Exception{
		
		
		return "board/insertForm";
	}
	
	@RequestMapping("/insertBoard")
	public String insertBoard(@ModelAttribute("boardVO") BoardVO boardVO) throws Exception{
		
		boardService.insertBoard(boardVO);
		
		return "redirect:/boardList";
	}
	
	@RequestMapping("/boardDetail")
	public String boardDetail(@ModelAttribute("boardVO") BoardVO boardVO, Model model, HttpServletRequest request) throws Exception{
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		boardVO.setBoardNo(boardNo);
		
		BoardVO detail = boardService.boardDetail(boardVO);
		
		model.addAttribute("detail", detail);
		
		return "board/boardDetail";
	}
	
	@RequestMapping("/updateform")
	public String updateform(@ModelAttribute("boardVO") BoardVO boardVO, Model model) throws Exception{
		
		try {
			boardService.updateBoard(boardVO);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/boardList";
		
	}
}
