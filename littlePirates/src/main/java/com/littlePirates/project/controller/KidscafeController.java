package com.littlePirates.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	// 키즈카페 지도(이름, 위도, 경도 )불러오기
	@ResponseBody
	@RequestMapping("/kidscafe_map/loaddata")
	public ArrayList<KidscafeVO> loaddata() {
		ArrayList<KidscafeVO> voList = service.listKidscafeInfo();
		
		return voList;
	}
	
	@ResponseBody
	@RequestMapping("/kidscafe_map/search")
	public String search(@RequestParam("searchAddress") String keyword) {
		
		String address = service.searchKidsCafe(keyword);
		
		return address;
	}
	
	@RequestMapping("/kidscafe_sec")
	public String kidscafe_sec(Model model) {
		ArrayList<KidscafeVO> voList = service.listKidscafeInfo();
		ArrayList<KidscafeVO> voList2 = service.listKidscafeInfo2();
		model.addAttribute("voList", voList);
		model.addAttribute("voList2", voList2);
		
		return "kidscafe/kidscafe_sec";
	}
	
	@RequestMapping("/kidscafe_third")
	public String kidscafe_third() {
		
		
		return "kidscafe/kidscafe_third";
	}
}
