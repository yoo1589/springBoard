package com.example.board.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BoardModifyForm {
	private int boardNo;
	private String boardPw;
	private String boardTitle;
	private String boardContent;
	private MultipartFile boardFile;
}
