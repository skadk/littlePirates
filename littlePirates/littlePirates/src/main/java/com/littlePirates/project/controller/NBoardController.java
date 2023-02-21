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

import com.littlePirates.project.model.NBoardVO;
import com.littlePirates.project.service.NBoardService;

@Controller
public class NBoardController {
	@Autowired
	private NBoardService nbservice;

	@RequestMapping("/nurseryBoard")
	public String nurseryBoard(Model model) {

		ArrayList<NBoardVO> boaList = nbservice.listAllBoard();
		model.addAttribute("boaList", boaList);
		return "menu/children/nursery";
	}

	@RequestMapping("/nurseryBoardWrite")
	public String nurseryBoardWrite(Model model) {
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
        Date time = new Date();
        String time1 = format1.format(time);
        model.addAttribute("time1",time1);
		return "menu/children/nurseryBoardWrite";
	}

	@RequestMapping("/nurseryBoard/Write")
	public String boardWirteForm(NBoardVO boa, HttpSession session) {
		boa.setMemid((String) session.getAttribute("sid"));
		nbservice.writeNBoard(boa);
		return "redirect:/nurseryBoard";
	}

	@RequestMapping("/nurseryBoard/nurseryBoardRead/{nBrdNo}")
	public String nurseryBoardRead(@PathVariable String nBrdNo, Model model) {		
		NBoardVO boa = nbservice.nBoardRead(nBrdNo);
		model.addAttribute("boa", boa);
		return "menu/children/nurseryBoardRead";
	}

	@RequestMapping("/nurseryBoard/deleteNBoard/{nBrdNo}")
	public String deleteNBoard(@PathVariable String nBrdNo) {
		nbservice.deleteNBoard(nBrdNo);
		return "redirect:/nurseryBoard";
	}

	@RequestMapping("/nurseryBoard/nurseryBoardUpdateForm/{nBrdNo}")
	public String nurseryBoardUpdate(@PathVariable String nBrdNo, Model model) {
		NBoardVO boa = nbservice.nBoardRead(nBrdNo);
		model.addAttribute("boa", boa);
		return "menu/children/nurseryBoardUpdate";
	}

	@RequestMapping("/nurseryBoard/nurseryBoardUpdate")
	public String updateboard(NBoardVO boa) {		
		nbservice.updateNBoard(boa);
		// 수정된 데이터 저장 후 상품 조회 화면으로 포워딩
		return "redirect:/nurseryBoard";
	}

	
	@RequestMapping("/nurseryBoard/updateNView/{id}")
	public String updateview(@PathVariable String id, Model model) {
		NBoardVO boa = nbservice.updateNView(id);
		model.addAttribute("boa", boa);
		// 수정된 데이터 저장 후 상품 조회 화면으로 포워딩
		return "menu/children/nurseryBoard";
	}



//후기 검색
	@RequestMapping("/nBoardSearch")
	public String productSearch1(@RequestParam String keyword,
																Model model){
		System.out.println(keyword);
		// 서비스로 전송해서 DB 검색 결과 받아옴
		ArrayList<NBoardVO> boaList = nbservice.nBoardSearch(keyword);
		model.addAttribute("boaList", boaList);
		
		for(int i=0; i<boaList.size(); i++) {
			System.out.println(boaList.get(i).getnBrdNo());
		}
		return "menu/children/nurserySearchResultView"; 
	}
}