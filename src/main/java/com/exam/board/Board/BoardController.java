package com.exam.board.Board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String boardDetail(BoardVO boardVO, Model model, HttpServletRequest request) throws Exception{
						  
		  
		  model.addAttribute("detail", boardMapper.boardDetail(boardVO));
		 
		
		return "boardDetail";
	}
	
	@RequestMapping("/updateform")
	public String updateform(@RequestParam("boardNo")int boardNo, BoardVO boardVO, Model model) throws Exception{
		
	
		model.addAttribute("upDetail", boardMapper.updateForm(boardVO));
		
		
		return "updateForm";
		
	}
	
	@RequestMapping("/updateBoard")
	public String updateBoard(@RequestParam("boardNo") int boardNo, BoardVO boardVO) throws Exception{
		
		boardMapper.updateBoard(boardVO);
		
		return "redirect:/boardList";
	}
	
	@RequestMapping("/deleteBoard")
	public String deleteBoard(@RequestParam("boardNo") int boardNo, BoardVO boardVO) throws Exception{
		
		
		boardMapper.deleteBoard(boardVO);
		
		return "redirect:/boardList";
	}
}
