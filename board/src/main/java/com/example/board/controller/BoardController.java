package com.example.board.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.board.service.BoardService;
import com.example.board.vo.Board;
import com.example.board.vo.BoardForm;

@Controller
public class BoardController {
	@Autowired private BoardService boardService;
	
	
	
	@GetMapping("/modifyBoard")
	public String modifyBoard(HttpSession session, Model model, @RequestParam("boardNo") int boardNo) {
		if(session.getAttribute("loginMember")==null) {
			return "redirect:/login";
		}
		Board boardModify = boardService.getBoardOne(boardNo);
		System.out.println("aaaaaa"+boardModify);//와뇨ㅕ
		model.addAttribute("boardModify", boardModify);
		return "modifyBoard";
	}
	
	@PostMapping("/modifyBoard")
	public String modifyBoard(BoardForm boardForm) {
		System.out.println("요청");
		boardService.modifyBoard(boardForm);
		return "redirect:/getBoardOne?boardNo="+boardForm.getBoardNo();
	}
	
	 @GetMapping("/removeBoard")
	    public String removeBoard(HttpSession session, Model model,
	                    @RequestParam("boardNo")int boardNo) {
	        if(session.getAttribute("loginMember") == null) {
	            return "redirect:/login";
	        }
	        Board board = boardService.getBoardOne(boardNo);
	        model.addAttribute("board", board);
	        return "removeBoard";
	    }
	    
	    @PostMapping("/removeBoard")
	    public String removeBoard(HttpSession session, Board board) {
	        if(session.getAttribute("loginMember") == null) {
	            return "redirect:/login";
	        }
	        boardService.removeBoard(board);
	        return "redirect:/getBoardList";
	    }
	
	
			
	
	// Get, Post 동시에 처리하기 위해서 -> @RequestMapping 에노테이션 사용
	@GetMapping("/addBoard")
    public String addBoard(HttpSession session) {
		if(session.getAttribute("loginMember")==null) {
			return "redirect:/login";
		}
		System.out.println("addBoard 폼 요청");
        return "addBoard";
	}
	
	@PostMapping("/addBoard")
    public String addBoard(BoardForm boardForm) {
        System.out.print(boardForm);
        
		
        boardService.addBoard(boardForm);
        //System.out.printf("BoardController.AddBoard : %d 행 입력성공", row);
        
        
        return "redirect:/getBoardList";
	}
	
	@GetMapping("/getBoardOne")
	public String getBoardOne(HttpSession session, Model model, 
								@RequestParam("boardNo") int boardNo) {
		if(session.getAttribute("loginMember")==null) {
			return "redirect:/login";
		}
		Board board = boardService.getBoardOne(boardNo);
		model.addAttribute("board", board);
		return "getBoardOne";
	}
	
	@GetMapping("/getBoardList")
	public String getBoardList(HttpSession session, Model model, 
			@RequestParam(value="currentPage", defaultValue="1") int currentPage, 
			@RequestParam(value="searchWord", required = false) String searchWord){
		if(session.getAttribute("loginMember")==null) {
			return "redirect:/login";
		}
		System.out.println("currentPage : " + currentPage);
		System.out.println("searchWord : " + searchWord);
		
		int rowPerPage = 10;
		Map<String, Object> map = boardService.getBoardList(currentPage, rowPerPage, searchWord);
		model.addAttribute("map", map);
		return "getBoardList";
	}
}
