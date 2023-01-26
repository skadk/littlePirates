package com.littlePirates.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

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

	//빙고 체크리스트
	@RequestMapping("/checkList/checkList_Clean")
	public String checkList_Clean(Model model) {
		ArrayList<ChecklistVO> voList = service.checklistInfo2();
		model.addAttribute("voList",voList);
		return "/checkList/checkList_Clean";
	}
	
	// 체크리스트 추가
	@RequestMapping("/checkList/insertChecklist")
	public String insertChecklist(ChecklistVO vo, HttpSession session) {
		// memId에 저장
		// 로그인 성공 시 설정한 세션 sid 값 가져와서 사용
		String memId = (String)session.getAttribute("sid");
		memId="abcdef";
		vo.setMemId(memId); // vo의 memId 값 설정

		// (1) 체크리스트가 존재 하는지 확인 (생성 날짜가 없으면 없는 것)
		int count = service.ischhChecked(vo.getChhDate(), memId);			
		
		if(count == 0 ) { // (2) 체크리스트 존재하지 않으면(count==0) 체크리스트 추가
			service.insertChecklist(vo);
		} else { 
			service.updateChecklist(vo);
		}
		
		return "/checkList/checkList_Clean";
	}
	
	
	//체크리스트 통계
	@RequestMapping("/checkList/checkList_Eat")
	public String checkList_Eat(Model model) {
		ArrayList<ChecklistVO> voList = service.checklistInfo3();
		model.addAttribute("voList",voList);

		return "/checkList/checkList_Eat";
	}
	
}
