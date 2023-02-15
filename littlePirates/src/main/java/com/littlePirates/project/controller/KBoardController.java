package com.littlePirates.project.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.littlePirates.project.model.KBoardVO;
import com.littlePirates.project.service.KBoardService;

@Controller
public class KBoardController {
	@Autowired
	private KBoardService kbservice;

	@RequestMapping("/kindergartenBoard")
	public String kindergartenBoard(Model model) {

		
		  ArrayList<KBoardVO> boaList = kbservice.listAllBoard();
		  model.addAttribute("boaList", boaList);
		 
		return "menu/children/kindergarten";
	}

	@RequestMapping("/kindergartenBoardWrite")
	public String kindergartenBoardWrite(Model model) {
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
        Date time = new Date();
        String time1 = format1.format(time);
        model.addAttribute("time1",time1);
		return "menu/children/kindergartenBoardWrite";
	}

	@RequestMapping("/kindergartenBoard/Write")
	public String boardWirteForm(KBoardVO boa, HttpSession session) {
		boa.setMemid((String) session.getAttribute("sid"));
		kbservice.writeKBoard(boa);
		return "redirect:/kindergartenBoard";
	}

	@RequestMapping("/kindergartenBoard/kindergartenBoardRead/{kBrdNo}")
	public String kindergartenBoardRead(@PathVariable String kBrdNo, Model model) {		
		KBoardVO boa = kbservice.kBoardRead(kBrdNo);
		model.addAttribute("boa", boa);
		return "menu/children/kindergartenBoardRead";
	}

	@RequestMapping("/kindergartenBoard/deleteKBoard/{kBrdNo}")
	public String deleteKBoard(@PathVariable String kBrdNo) {
		kbservice.deleteKBoard(kBrdNo);
		return "redirect:/kindergartenBoard";
	}

	@RequestMapping("/kindergartenBoard/kindergartenBoardUpdateForm/{kBrdNo}")
	public String kindergartenBoardUpdate(@PathVariable String kBrdNo, Model model) {
		KBoardVO boa = kbservice.kBoardRead(kBrdNo);
		model.addAttribute("boa", boa);
		return "menu/children/kindergartenBoardUpdate";
	}

	@RequestMapping("/kindergartenBoard/kindergartenBoardUpdate")
	public String updateboard(KBoardVO boa) {		
		kbservice.updateKBoard(boa);
		// 수정된 데이터 저장 후 상품 조회 화면으로 포워딩
		return "redirect:/kindergartenBoard";
	}

	
	@RequestMapping("/KindergartenBoard/updateKView/{id}")
	public String updateview(@PathVariable String id, Model model) {
		KBoardVO boa = kbservice.updateKView(id);
		model.addAttribute("boa", boa);
		// 수정된 데이터 저장 후 상품 조회 화면으로 포워딩
		return "menu/children/kindergartenBoard";
	}



//후기 검색
	@RequestMapping("/kBoardSearch")
	public String productSearch1(@RequestParam String keyword,
																Model model){
		System.out.println(keyword);
		// 서비스로 전송해서 DB 검색 결과 받아옴
		ArrayList<KBoardVO> boaList = kbservice.kBoardSearch(keyword);
		model.addAttribute("boaList", boaList);
		
		for(int i=0; i<boaList.size(); i++) {
			System.out.println(boaList.get(i).getkBrdNo());
		}
		return "menu/children/kindergartenSearchResultView"; 
	}
}