package com.example.board.service;

import java.util.List;
import java.util.Map;

import com.example.board.vo.Board;
import com.example.board.vo.BoardForm;
import com.example.board.vo.Boardfile;
import com.example.board.vo.Feedback;

public interface BoardService {
	
	public int addFeedback(Feedback feedback);
	
	public void modifyBoard(BoardForm boardForm);
	
	 public void removeBoard(Board board); 
	
	public Board getBoardOne(int boardNo);
	
	public void addBoard(BoardForm boardForm);
	
	public Map<String, Object> getBoardList(int currentPage, int rowPerPage, String searchWord);
}
