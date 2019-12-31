package com.example.board.vo;

import lombok.Data;

@Data
public class Boardfile {
	private int boardfileNo;
	private int boardNo;
	private String filename;
	private String extension;
	private String contentType;
	private long size;
	private String originName;
}
