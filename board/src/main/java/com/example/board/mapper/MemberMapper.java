package com.example.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.board.vo.Board;
import com.example.board.vo.LoginForm;
import com.example.board.vo.Member;

@Mapper
public interface MemberMapper {
	Member selectMemberOne(LoginForm loginForm);
	//인터페이스는 생략가능 public abstract
	
	public int selectMemberInsert(Member member);

	public int selectMemberDelete(Member member);

	
}
