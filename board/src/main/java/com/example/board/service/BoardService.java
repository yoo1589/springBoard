package com.example.board.service;

import java.util.Map;

import com.example.board.vo.Board;
import com.example.board.vo.BoardForm;
import com.example.board.vo.Boardfile;


public interface BoardService {
	
	public void modifyBoard(BoardForm boardForm);
	
	 public void removeBoard(Board board); 
	
	public Board getBoardOne(int boardNo);
	
	public void addBoard(BoardForm boardForm);
	
	public Map<String, Object> getBoardList(int currentPage, int rowPerPage, String searchWord);
}
