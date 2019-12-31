package com.example.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.board.vo.Board;
import com.example.board.vo.Boardfile;

@Mapper
public interface BoardfileMapper {
	public Boardfile selectBoardfileOne(int boardNo);
	public int insertBoardfile(Boardfile boardfile);
	public int modifyBoardfile(Boardfile boardfile);
	public int deleteBoardfile(int boardNo);
	
}
