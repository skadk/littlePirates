package com.littlePirates.project.controller;

import java.util.HashMap;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.littlePirates.project.service.PagingService;

@Controller
public class PagingController {
	
	@Autowired
	private PagingService pservice;
	
	
	@RequestMapping("/example")
	public String getPagingList() {
		
		return "paging/getPagingList";
	}

	@ResponseBody
	@RequestMapping("/getPagingList")
	public JSONObject getPagingList(@RequestParam HashMap<String, Object> params) throws Exception {
	    int startOffset = Integer.parseInt(String.valueOf(params.get("startOffset")));
	    int endOffset = Integer.parseInt(String.valueOf(params.get("endOffset")));
	    params.put("startOffset", startOffset);
	    params.put("endOffset", endOffset);
	    
	    System.out.println(startOffset);
	    System.out.println(endOffset);
	    
	    // DB에서 목록 조회
	    List<HashMap<String, Object>> pagingList = pservice.getPagingList(params);
	    
	    int pagingListCnt = pservice.getPagingListCnt(params); // 목록 총 개수 조회
	    
	    System.out.println(pagingList);

	    HashMap<String, Object> resultMap = new HashMap<String, Object>();
	    resultMap.put("dataList", pagingList);
	    resultMap.put("COUNT", pagingListCnt);

	    JSONObject result = new JSONObject(resultMap);
	    
	    System.out.println(result);
	    
	    return result;
	}
}
