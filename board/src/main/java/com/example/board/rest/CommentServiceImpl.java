package com.example.board.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.board.vo.Comment;

@Service
@Transactional
public class CommentServiceImpl implements CommentService{
	@Autowired private CommentMapper commentMapper;
	
	@Override
	public int removeComment(Comment comment) {
		return commentMapper.deleteComment(comment);
	}
	
	@Override
	public List<Comment> getCommentList(int boardNo) {
		return commentMapper.selectCommentList(boardNo);
	}
	
	@Override
	public int addComment(Comment comment) {
		return commentMapper.insertComment(comment);
	}
	
	@Override
	public int deleteBoardComment(int boardNo) {
		return commentMapper.deleteBoardComment(boardNo);
	}
}
