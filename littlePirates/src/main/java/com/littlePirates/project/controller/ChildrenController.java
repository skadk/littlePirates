package com.littlePirates.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.littlePirates.project.model.NurseryVO;
import com.littlePirates.project.service.ChildrenService;

@Controller
public class ChildrenController {
	
	@Autowired
	private ChildrenService cdservice;

	@RequestMapping("/children")
	public String children(Model model) {
		
		ArrayList<NurseryVO> NList = cdservice.nurseryList();
		model.addAttribute("NList", NList);
		
		return "menu/children/children";
	}
}