package com.example.board.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.board.vo.Comment;

@RestController
public class CommentController {
	@Autowired private CommentService commentService;
	
	@PostMapping("/rest/removeComment")
	public String removeComment(Comment comment) {
		System.out.println(comment);
		int row = commentService.removeComment(comment);
		if(row == 0) {
			return "fail";
		}
		return "success";
	}
	
	@PostMapping("/rest/getCommentList")
	public List<Comment> getCommentList(@RequestParam(value="boardNo") int boardNo){
		return commentService.getCommentList(boardNo);
	}
	
	@PostMapping("/rest/addComment")
	public String addComments(Comment comment) {
		// System.out.println("CommentController.addComment");
		int row = commentService.addComment(comment);
		if(row == 0) {
			System.out.println("fail");
		}
		System.out.println(comment);
		System.out.printf("CommentController.AddComment : %d 입력성공", row);
		// service interface호출
		return "success";
	}
}
