package com.example.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.board.mapper.MemberMapper;
import com.example.board.vo.LoginForm;
import com.example.board.vo.Member;

@Service
@Transactional
public class MemberServiceImpl implements MemberService{
   @Autowired private MemberMapper memberMapper;
   
   @Override
   public Member getMemberOne(LoginForm loginForm) {
	   
	//  System.out.print("impl : "+member);
      return memberMapper.selectMemberOne(loginForm);
   }
    
   
   @Override
   public int getMemberInsert(Member member) {
	   
	//  System.out.print("impl : "+member);
      return memberMapper.selectMemberInsert(member);
   }


@Override
public int getMemberDelete(Member member) {
	// TODO Auto-generated method stub
	return memberMapper.selectMemberDelete(member);
}
  
}