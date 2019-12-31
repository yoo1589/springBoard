package com.example.board.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.example.board.mapper.BoardMapper;
import com.example.board.mapper.BoardfileMapper;
import com.example.board.rest.CommentMapper;
import com.example.board.vo.Board;
import com.example.board.vo.BoardForm;
import com.example.board.vo.BoardModify;
import com.example.board.vo.Boardfile;
import com.example.board.vo.Page;

@Service
@Transactional
public class BoardServiceImpl implements BoardService{
	@Autowired private BoardMapper boardMapper;
	@Autowired private BoardfileMapper boardfileMapper;
	@Autowired private CommentMapper commentMapper;
	@Override
	
	public void modifyBoard(BoardForm boardForm) {
		
		BoardModify boardModify = new BoardModify();
		boardModify.setBoardNo(boardForm.getBoardNo());
		boardModify.setBoardTitle(boardForm.getBoardTitle());
		boardModify.setBoardPw(boardForm.getBoardPw());
		boardModify.setBoardContent(boardForm.getBoardContent());
		//System.out.println("boardModify : "+boardModify);
		//System.out.println(boardModify.getBoardNo()); //0
		int row = boardMapper.modifyBoard(boardModify);
		//System.out.println("넘버값"+boardModify.getBoardNo()); // 새로운 키값이 들어갈거	SELECT LAST_INSERT_ID()
		//2. boardFile
		MultipartFile mf = boardForm.getBoardFile();
		String contentType = mf.getContentType();
		//System.out.println("ㅇㅇ"+boardForm); //0
		String originName = mf.getOriginalFilename();
		long size = mf.getSize();
		//System.out.println("contentType : "+contentType);
		//System.out.println("originName: "+originName);
		//System.out.println("size: "+size);
		
		
		String extension = originName.substring(originName.lastIndexOf(".")+1); //txt
		String filename =  UUID.randomUUID().toString().replace("-", "");
	
		// 테이블에 저장
		Boardfile boardfile = new Boardfile();
		boardfile.setBoardNo(boardModify.getBoardNo());
		//System.out.println("보드파일"+boardfile);
		boardfile.setFilename(filename);
		boardfile.setExtension(extension);
		boardfile.setContentType(contentType);
		boardfile.setSize(size);
		boardfile.setOriginName(originName);
		boardfileMapper.modifyBoardfile(boardfile);
		//System.out.print("보드파일"+boardfile);
		// 파일로 저장
		String saveFilename = filename+"."+extension;
		//							^랜덤 아이디를 구해주세요		^-를뺴주세요			    ^확장자를 붙여주세요
		
		try {
			mf.transferTo(new File("E:\\Spring\\git\\board\\src\\main\\webapp\\upload\\"+saveFilename));
			//파일을 받아서 옮겨주세요
		}catch (Exception e) {
			
			e.printStackTrace();
			throw new RuntimeException();
		}
		
	}
		
		
	
	 @Override
	    public void removeBoard(Board board) {
	            boardfileMapper.deleteBoardfile(board.getBoardNo());
	            commentMapper.deleteBoardComment(board.getBoardNo());
	            boardMapper.deleteBoard(board);
	   
	    }
	
	
	
	
	@Override
	public void addBoard(BoardForm boardForm) {
		// 1.BoardForm ->Board,BoardFile 분리작업
		
		//board
		Board board = new Board();
		board.setBoardTitle(boardForm.getBoardTitle());
		board.setBoardPw(boardForm.getBoardPw());
		board.setBoardContent(boardForm.getBoardContent());
		board.setBoardUser(boardForm.getBoardUser());
		//System.out.println(board);
		System.out.println(board.getBoardNo()); //0
		int row = boardMapper.insertBoard(board);
		System.out.println(board.getBoardNo()); // 새로운 키값이 들어갈거	SELECT LAST_INSERT_ID()
		//2. boardFile
		MultipartFile mf = boardForm.getBoardFile();
		String contentType = mf.getContentType();
		String originName = mf.getOriginalFilename();
		long size = mf.getSize();
		//System.out.println("contentType : "+contentType);
		//System.out.println("originName: "+originName);
		//System.out.println("size: "+size);
		
		
		String extension = originName.substring(originName.lastIndexOf(".")+1); //txt
		String filename =  UUID.randomUUID().toString().replace("-", "");
	
		// 테이블에 저장
		Boardfile boardfile = new Boardfile();
		boardfile.setBoardNo(board.getBoardNo());
		boardfile.setFilename(filename);
		boardfile.setExtension(extension);
		boardfile.setContentType(contentType);
		boardfile.setSize(size);
		boardfile.setOriginName(originName);
		boardfileMapper.insertBoardfile(boardfile);
		// 파일로 저장
		String saveFilename = filename+"."+extension;
		//							^랜덤 아이디를 구해주세요		^-를뺴주세요			    ^확장자를 붙여주세요
		
		try {
			mf.transferTo(new File("E:\\Spring\\git\\board\\src\\main\\webapp\\upload\\"+saveFilename));
			//파일을 받아서 옮겨주세요
		}catch (Exception e) {
			
			e.printStackTrace();
			throw new RuntimeException();
		}
		
	}
	
	
	
	
	
	@Override
	public Board getBoardOne(int boardNo) {
		Board board =  boardMapper.selectBoardOne(boardNo);
		// board.boardfile
		Boardfile boardfile = boardfileMapper.selectBoardfileOne(boardNo);
		board.setBoardfile(boardfile);
		
		
		return board;
	}
	
	
	
	
	
	@Override
	public Map<String, Object> getBoardList(int currentPage, int rowPerPage, String searchWord){
		Page page = new Page();
		page.setRowPerPage(rowPerPage);
		page.setBeginRow((currentPage-1)*rowPerPage);
		page.setSearchWord(searchWord);
		List<Board> list = boardMapper.selectBoardList(page);
		
		int totalRowCount = boardMapper.selectBoardCount(searchWord);
		int lastPage = totalRowCount / rowPerPage;
		if(totalRowCount % lastPage !=0) {
			lastPage += 1;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("currentPage", currentPage);
		map.put("totalRowCount", totalRowCount);
		map.put("lastPage", lastPage);
		map.put("searchWord", searchWord);
		return map;
	}
}
