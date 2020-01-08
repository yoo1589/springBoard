package com.example.board.rest;

import java.util.List;

import com.example.board.vo.Comment;

public interface CommentService {
	public int removeComment(Comment comment);
	public List<Comment> getCommentList(int boardNo);
	public int addComment(Comment comment);
	public int deleteBoardComment(int boardNo);
}
