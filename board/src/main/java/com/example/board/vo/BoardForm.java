package com.example.board.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class BoardForm {
	private int boardNo;
	private String boardPw;
	private String boardTitle;
	private String boardContent;
	private String boardUser;
	private String boardDate;
	private MultipartFile boardFile;//여러개 쓰고 싶으면 배열로 하던가
	//private List<MultipartFile> boardFileList;
	
}
