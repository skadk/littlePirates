package com.littlePirates.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KBoardVO;
import com.littlePirates.project.service.ChildrenService;

@Controller
public class ChildrenController {
	@Autowired
	private ChildrenService cdservice;

	@RequestMapping("/children")
	public String NurseryList(Model model) {
		int cur_page = 1;
		int total_count = cdservice.total_nurseryInfo();
		
		ArrayList<ChildrenVO> NList = cdservice.NurseryListPage(cur_page);
		
		model.addAttribute("cur_page", cur_page);
		model.addAttribute("total_count", total_count);
		model.addAttribute("NList", NList);
		return "menu/children/children";
	}
	
	@RequestMapping("/children_page")
	public String children_page(@RequestParam int pagenum, Model model) {
		int total_count = cdservice.total_nurseryInfo();
		
		ArrayList<ChildrenVO> NList = cdservice.NurseryListPage(pagenum);
		
		model.addAttribute("cur_page", pagenum);
		model.addAttribute("total_count", total_count);
		model.addAttribute("NList", NList);
		
		return "menu/children/children_page";
	}
	
	//어린이집 검색
		@RequestMapping("/nurserySearch")
		public String productSearch1(@RequestParam String keyword,
																	Model model){
			System.out.println(keyword);
			// 서비스로 전송해서 DB 검색 결과 받아옴
			ArrayList<ChildrenVO> NList = cdservice.nurserySearch(keyword);
			model.addAttribute("NList", NList);
			
			for(int i=0; i<NList.size(); i++) {
				System.out.println(NList.get(i).getNurNo());
			}
			return "menu/children/children_page"; 
		}
}