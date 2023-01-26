package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IKidscafeDAO;
import com.littlePirates.project.model.KidscafeReviewVO;
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
	public ArrayList<KidscafeReviewVO> reviewList(int kcNo) {
		// TODO Auto-generated method stub
		return dao.reviewList(kcNo);
	}
	
	
}
