package com.littlePirates.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.littlePirates.project.model.ChecklistVO;
import com.littlePirates.project.service.ChecklistService;

@Controller
public class HomeController {


	@Autowired
	ChecklistService service;

	@RequestMapping("/")
	public String index() {

		return "mainIndex";
	}

	@RequestMapping("/board")
	public String board() {

		return "menu/board/board";
	}

	@RequestMapping("/kindergarten")
	public String kindergarten() {

		return "menu/board/kindergarten";
	}
	
	@RequestMapping("/nursery")
	public String nursery() {
		
		return "menu/board/nursery";
	}

	@RequestMapping("/children")
	public String children() {

		return "menu/board/children";
	}

	@RequestMapping("/board/boardText")
	public String boardText() {

		return "menu/board/boardText";
	}

	@RequestMapping("/anonymusBoard")
	public String anonymusBoard() {

		return "menu/board/anonymusBoard";
	}

	@RequestMapping("/login")
	public String login1() {
		
		return "menu/member/login";

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


	//체크리스트 뷰 페이지 열기
	@RequestMapping("/checklist")
	public String checklist() {
		
		return "checkList/checkListView";
	}


	
	@RequestMapping("/board/boardWrite")
	public String boardWrite() {
		
		return "menu/board/boardWrite";

	}

	@RequestMapping("/member/login")
	public String login() {

		return "member/login";
	}
}
