package com.example.board.rest;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.board.vo.Comment;

@Mapper
public interface CommentMapper {
	public int deleteComment(Comment comment);
	
	public int deleteBoardComment(int boardNo);
	
	public List<Comment> selectCommentList(int boardNo);
	public int insertComment(Comment comment);
}
