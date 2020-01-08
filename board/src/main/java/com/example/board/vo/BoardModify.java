package com.example.board.vo;

import lombok.Data;

@Data
public class BoardModify {
	private int boardNo;
	private String boardPw;
	private String boardTitle;
	private String boardContent;
	private Boardfile boardfile;
}
