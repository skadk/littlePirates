package com.littlePirates.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.littlePirates.project.model.PagingVO;
import com.littlePirates.project.service.ChildrenService;

@Controller
public class ChildrenController {
	@Autowired
	private ChildrenService cdservice;

	@RequestMapping("/children")
	public String NurseryList(Model model) {
		/*
		int total = cdservice.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", vo);
		
		model.addAttribute("NList", cdservice.NurseryList(vo));
		*/
		model.addAttribute("KList", cdservice.KindergartenList());
		return "menu/children/children";
	}
	

}
