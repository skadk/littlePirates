package com.littlePirates.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.littlePirates.project.model.KidscafeVO;
import com.littlePirates.project.service.KidscafeService;

@Controller
public class KidscafeController {
	@Autowired
	private KidscafeService service;
	
	@RequestMapping("/kidscafe_map")
	public String kidscafe_map(Model model) {
		ArrayList<KidscafeVO> voList = service.listKidscafeInfo();
		model.addAttribute("voList", voList);
		
		return "kidscafe/kidscafe_map";
	}

	@ResponseBody
	@RequestMapping("/kidscafe_map/loaddata")
	public ArrayList<KidscafeVO> loaddata() {
		ArrayList<KidscafeVO> voList = service.listKidscafeInfo();
		
		return voList;
	}
	
	@RequestMapping("/kidscafe_sec")
	public String kidscafe_sec() {
		
		return "kidscafe/kidscafe_sec";
	}
}
