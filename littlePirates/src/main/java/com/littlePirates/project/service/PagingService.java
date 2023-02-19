package com.littlePirates.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IPagingDAO;

@Service
public class PagingService implements IPagingService {
	
	@Autowired
	@Qualifier("IPagingDAO")
	IPagingDAO dao;

	@Override
	public List<HashMap<String, Object>> getPagingList(HashMap<String, Object> params) {
		
		List<HashMap<String, Object>> b = dao.getPagingList(params);
		
		return b;
	}

	@Override
	public int getPagingListCnt(HashMap<String, Object> params) {
		
		int a = dao.getPagingListCnt(params);
		
		return a;
	}

}
