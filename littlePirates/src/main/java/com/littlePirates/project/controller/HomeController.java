package com.littlePirates.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.littlePirates.project.service.ChecklistService;

@Controller
public class HomeController {

	@Autowired
	ChecklistService service;

	@RequestMapping("/")
	public String mainIndex() {

		return "mainIndex";
	}

	// 회원가입 페이지 열기
	@RequestMapping("/member/signUp")
	public String signUp() {

		return "member/signUp";
	}

	// 로그인 페이지 열기
	@RequestMapping("/member/login")
	public String login() {

		return "member/login";
	}
  
	// 체크리스트 뷰 페이지 열기
	@RequestMapping("/checklist")
	public String checklist() {

		return "/checkList/checkListView";
	}

	@RequestMapping("/kindergarten")
	public String kindergarten() {

		return "menu/children/kindergarten";

	}

	@RequestMapping("/nursery")
	public String nursery() {
		
		return "menu/children/nursery";
	}
	
	@RequestMapping("/nurseryBoard")
	public String nurseryBoard() {
		
		return "menu/children/nurseryBoard";
	}
	
	@RequestMapping("/kindergartenBoard")
	public String kindergartenBoard() {
		
		return "menu/children/kindergartenBoard";
	}

	

}
