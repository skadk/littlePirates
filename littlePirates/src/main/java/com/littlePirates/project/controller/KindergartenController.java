package com.littlePirates.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		ArrayList<KindergartenVO> KList = kdservice.KindergartenList();
		model.addAttribute("KList", KList);
		return "menu/children/kindergartenInfo";
	}

	

}
