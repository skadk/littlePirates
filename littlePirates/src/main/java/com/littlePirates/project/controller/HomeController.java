package com.littlePirates.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		
		return "mainIndex";
	}
	
	@RequestMapping("/checkList")
	public String checkList() {
		
		return "menu/checkList/treasureMap";
	}
	
	@RequestMapping("/board")
	public String board() {
		
		return "menu/board/board";
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
	public String login() {
		
		return "menu/member/login";
	}
}
