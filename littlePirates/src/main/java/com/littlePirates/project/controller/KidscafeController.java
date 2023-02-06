package com.littlePirates.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.littlePirates.project.model.KidscafeReviewVO;
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

	// 키즈카페 지도(이름, 위도, 경도)불러오기
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
	
	// 간편하게 보기 페이지 열기
	@RequestMapping("/kidscafe_sec")
	public String kidscafe_sec(Model model) {
		ArrayList<KidscafeVO> voList = service.listKidscafeInfo();

		model.addAttribute("voList", voList);
		
		return "kidscafe/kidscafe_sec";
	}

	// 시/도 선택시 해당되는 시/도 출력
	@RequestMapping("/kidscafe_sec/search")
	public String kidscafe_sec_search(@RequestParam String sido, Model model) {
		ArrayList<KidscafeVO> voList = service.kidscafeSearchsido(sido);
		
		model.addAttribute("voList", voList);
		
		return "kidscafe/kidscafe_sec_sido";
	}
	
	//	키즈카페 키워드 검색 후 해당 관련 정보 나타내기
	@RequestMapping("/kidscafe_map/kidscafeSearch")
	public String kidscafeSearch(@RequestParam String keyword, Model model){
		
		ArrayList<KidscafeVO> voList = service.kidscafeSearchkeyword(keyword);

		model.addAttribute("voList", voList);
		
		return "kidscafe/kidscafeSearch";	
	}

	//	키즈카페 해당 되는 후기 나타내기
	@RequestMapping("/kidscafe_map/kidscafeReview")
	public String kidscafeReview(Model model, HttpSession session){
		
		int kcNo = (int) session.getAttribute("sid");
		
		ArrayList<KidscafeReviewVO> reviewList = service.reviewList(kcNo);
		model.addAttribute("reviewList", reviewList);
		
		return "kidscafe/kidscafeReview";	
	}
	
	@RequestMapping("/kidscafe_third")
	public String kidscafe_third() {
		
		return "kidscafe/kidscafe_third";
	}
	
}
