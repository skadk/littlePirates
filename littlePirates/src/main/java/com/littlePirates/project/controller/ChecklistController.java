package com.littlePirates.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.littlePirates.project.model.ChecklistVO;
import com.littlePirates.project.service.ChecklistService;



@Controller
public class ChecklistController {
	
	@Autowired
	ChecklistService service;
	

	
	@RequestMapping("/checkList/checkList_Manner")
	public String checkList_Manner(Model model) {
		ArrayList<ChecklistVO> voList = service.checklistInfo();
		model.addAttribute("voList",voList);
		return "/checkList/checkList_Manner";
	}


	@RequestMapping("/checkList/checkList_Clean")
	public String checkList_Clean(Model model) {
		ArrayList<ChecklistVO> voList = service.checklistInfo2();
		model.addAttribute("voList",voList);
		return "/checkList/checkList_Clean";
	}

	//체크리스트 식습관 페이지 열기
	@RequestMapping("/checkList/checkList_Eat")
	public String checkList_Eat(Model model) {
		ArrayList<ChecklistVO> voList = service.checklistInfo3();
		model.addAttribute("voList",voList);		
		return "/checkList/checkList_Eat";
	}
	
}
