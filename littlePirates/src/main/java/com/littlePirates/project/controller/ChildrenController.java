package com.littlePirates.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.service.ChildrenService;

import com.littlePirates.project.model.KindergartenVO;

@Controller
public class ChildrenController {
	@Autowired
	private ChildrenService cdservice;

	@RequestMapping("/children")
	public String NurseryList(Model model) {
		ArrayList<ChildrenVO> NList = cdservice.NurseryList();
		ArrayList<KindergartenVO> KList = cdservice.KindergartenList();
		model.addAttribute("NList", NList);
		model.addAttribute("KList", KList);
		return "menu/children/children";
	}
	
}