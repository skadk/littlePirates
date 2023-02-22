package com.littlePirates.project.controller;

import javax.servlet.http.HttpSession;

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

	// 회원가입1 페이지 열기
	@RequestMapping("/member/signUp1")
	public String signUp1(HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		
		if (memId != null) {
			return "redirect:/";
		}

		return "member/signUp1";
	}

	// 로그인 페이지 열기
	@RequestMapping("/member/login")
	public String login(HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		
		if (memId != null) {
			return "redirect:/";
		}
		

		return "member/login";
	}
  
	// 체크리스트 뷰 페이지 열기
	@RequestMapping("/checklist")
	public String checklist() {

		return "menu/checkList/checkListView";
	}

	@RequestMapping("/kindergarten")
	public String kindergarten() {

		return "menu/children/kindergarten";
	} 
 
	@RequestMapping("/nursery")
	public String nursery() {
		
		return "menu/children/nursery";
	}
	
	@RequestMapping("/paintDiary")
	public String paintDiary() {
		
		return "menu/paintDiary/paintDiary";
	}
	
	@RequestMapping("/paintDiaryWrite")
	public String paintDiaryWrite() {
		
		return "menu/paintDiary/paintDiaryWrite";
	}

}
