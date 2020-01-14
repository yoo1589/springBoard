package com.example.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.board.vo.Board;
import com.example.board.vo.BoardModify;
import com.example.board.vo.Boardfile;
import com.example.board.vo.Feedback;
import com.example.board.vo.Page;
@Mapper
public interface BoardMapper {
	
	public int insertFeedback(Feedback feedback);
	
	public int modifyBoard(BoardModify boardModify);

	public int deleteBoard(Board board);
	
	public int selectfileDelete(Board board);

	public int insertBoard(Board board);
	
	public Board selectBoardOne(int boardNo);

	public int selectBoardCount(String searchWord);
	
	public List<Board> selectBoardList(Page page);
}
