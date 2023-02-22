package com.littlePirates.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IKidscafeDAO;
import com.littlePirates.project.model.KcreviewVO;
import com.littlePirates.project.model.KidscafeVO;

@Service
public class KidscafeService implements IKidscafeService {
	@Autowired
	@Qualifier("IKidscafeDAO")
	private IKidscafeDAO dao;
	
	@Override
	public ArrayList<KidscafeVO> listKidscafeInfo() {
		
		return dao.listKidscafeInfo();
	}

	@Override
	public String searchKidsCafe(String keyword) {
		String searchAddress = dao.searchKidsCafe(keyword);

		return searchAddress;
	}
	
	@Override
	public ArrayList<KidscafeVO> kidscafeSearchkeyword(String kcName) {
		// TODO Auto-generated method stub
		return dao.kidscafeSearchkeyword(kcName);
	}

	@Override
	public ArrayList<KidscafeVO> kidscafeSearchsido(String sido) {

		return dao.kidscafeSearchsido(sido);
	}

	@Override
	public ArrayList<KidscafeVO> kidscafeSearchgu(String sido, String gu) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sido", sido);
		map.put("gu", gu);
		
		return dao.kidscafeSearchgu(map);
	}

	@Override
	public ArrayList<KidscafeVO> listKidscafeInfopage(int pagenum) {
		// TODO Auto-generated method stub
		return dao.listKidscafeInfopage(pagenum);
	}

	@Override
	public int total_kidscafeinfo() {
		// TODO Auto-generated method stub
		return dao.total_kidscafeinfo();
	}

	@Override
	public ArrayList<KidscafeVO> kidscafeSearchsidopage(String sido, int pagenum) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sido", sido);
		int start_num = ((pagenum-1)*10)+1;
		map.put("start_num", start_num);
		
		return dao.kidscafeSearchsidopage(map);
	}

	@Override
	public int total_kidscafeSearchsido(String sido) {
		// TODO Auto-generated method stub
		return dao.total_kidscafeSearchsido(sido);
	}

	@Override
	public ArrayList<KidscafeVO> kidscafeSearchgupage(String sido, String gu, int pagenum) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sido", sido);
		map.put("gu", gu);
		int start_num = ((pagenum-1)*10)+1;
		map.put("start_num", start_num);
		
		return dao.kidscafeSearchgupage(map);
	}

	@Override
	public int total_kidscafeSearchgu(String sido, String gu) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sido", sido);
		map.put("gu", gu);
		
		return dao.total_kidscafeSearchgu(map);
	}



	
	
}
