package com.example.board.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.board.service.MemberService;
import com.example.board.vo.LoginForm;
import com.example.board.vo.Member;

@Controller
public class LoginController {
   @Autowired private MemberService memberService;
   
   @GetMapping("/login")
   public String login(HttpSession session) {
      Member member = (Member)session.getAttribute("loginMember");
      if(member != null) {
         System.out.println("로그인 상태");
         return"redirect:/";
      }
      return "login";
   }
   @PostMapping("/login")
   public String login(HttpSession session, LoginForm loginForm) {
      Member member = memberService.getMemberOne(loginForm);
      
      if(member == null) {
         return "redirect:login";
      }
      //System.out.print("세션들어갈내요"+member);
      session.setAttribute("loginMember", member);
      return "redirect:/";
   }
   
  
   @PostMapping("/join")
   public String join(Member member) {
       //System.out.print(member);
       memberService.getMemberInsert(member);
       return "login";
	}
   
   @GetMapping("/join")
   public String join() {
		//System.out.println("join 폼 요청");

       return "join";
	}
   

	
   
   @GetMapping("/deleteMember")
   public String deleteMember(Model model, HttpSession session) { 
       Member member =(Member)session.getAttribute("loginMember");
       //System.out.println("member딜리트"+member);
       
       model.addAttribute(member);
       return "deleteMember";
	   }
   
		@PostMapping("/deleteMember")
	public String deleteMember(HttpSession session, Member member) {  
	//System.out.println("member"+member);
	session.invalidate();  
	memberService.getMemberDelete(member);
	return "login"; 
	}
   
   
   @GetMapping("/logout")
   public String logout(HttpSession session) {
      session.invalidate();
      return "redirect:/login";
   }
}
