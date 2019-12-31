package com.example.board.service;

import com.example.board.vo.LoginForm;
import com.example.board.vo.Member;

public interface MemberService {
	Member getMemberOne(LoginForm loginForm);
	
	public int getMemberInsert(Member member);
	
	public int getMemberDelete(Member member);
}
