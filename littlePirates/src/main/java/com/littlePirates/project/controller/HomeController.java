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

	@RequestMapping("/board")
	public String board() {

		return "menu/board/board";
	}

	@RequestMapping("/kindergarten")
	public String kindergarten() {

		return "menu/childern/kindergarten";
	}

	@RequestMapping("/nursery")
	public String nursery() {

		return "menu/childern/nursery";
	}

	@RequestMapping("/board/boardText")
	public String boardText() {

		return "menu/board/boardText";
	}

	@RequestMapping("/anonymusBoard")
	public String anonymusBoard() {

		return "menu/board/anonymusBoard";
	}


	@RequestMapping("/anonymusBoard/anonymusBoardText")
	public String anounymusBoardText() {

		return "menu/board/anonymusBoardText";

	}

	@RequestMapping("/fleaMarket")
	public String fleaMarket() {

		return "menu/board/fleaMarket";
	}

	@RequestMapping("/fleaMarket/fleaMarketText")
	public String fleaMarketText() {

		return "menu/board/fleaMarketText";
	}

	@RequestMapping("/freePresentTest")
	public String freePresentTest() {

		return "menu/board/freePresentTest";

	}

	@RequestMapping("/board/boardWrite")
	public String boardWrite() {

		return "menu/board/boardWrite";

	}

}
