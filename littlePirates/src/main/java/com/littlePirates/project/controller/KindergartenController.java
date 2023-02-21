package com.littlePirates.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KidscafeVO;
import com.littlePirates.project.model.KindergartenVO;
import com.littlePirates.project.service.ChildrenService;
import com.littlePirates.project.service.KindergartenService;

@Controller
public class KindergartenController {
	@Autowired
	private KindergartenService kdservice;

	@RequestMapping("/kindergartenInfo")
	public String KindergartenList(Model model) {
		int cur_page = 1;
		int total_count = kdservice.total_kindergartenInfo();
		
		ArrayList<KindergartenVO> KList = kdservice.KindergartenListPage(cur_page);
		
		model.addAttribute("cur_page", cur_page);
		model.addAttribute("total_count", total_count);
		model.addAttribute("KList", KList);
		return "menu/children/kindergartenInfo";
	}

	@RequestMapping("/kindergarten_page")
	public String kindergarten_page(@RequestParam int pagenum, Model model) {
		int total_count = kdservice.total_kindergartenInfo();
		
		ArrayList<KindergartenVO> KList = kdservice.KindergartenListPage(pagenum);
		
		model.addAttribute("cur_page", pagenum);
		model.addAttribute("total_count", total_count);
		model.addAttribute("KList", KList);
		
		return "menu/children/kindergarten_page";
	}

}
