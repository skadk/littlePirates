package com.littlePirates.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.littlePirates.project.model.BoardVO;
import com.littlePirates.project.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	/*********************** 보드리스트 ***************************/
	
	@RequestMapping("/board")
	public String board(Model model) {
		ArrayList<BoardVO> boardList = service.listAllBoard();
		model.addAttribute("boardList", boardList);
		return "menu/board/board";
	}
	
	@RequestMapping("/board/boardText")
	public String boardText() {

		return "menu/board/boardText";
	}

	@RequestMapping("/anonymusBoard")
	public String anonymusBoard(Model model) {
		// ProductService의 listAllProduct() 호출 (ProductService의 객체 필요 : DI 설정필요)
		ArrayList<BoardVO> boardList = service.listAllBoard();
		model.addAttribute("boardList", boardList);
		
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
