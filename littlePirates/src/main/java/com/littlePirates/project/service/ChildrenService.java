package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IChildrenDAO;

import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KBoardVO;
import com.littlePirates.project.model.KindergartenVO;

@Service
public class ChildrenService implements IChildrenService {
	@Autowired
	@Qualifier("IChildrenDAO")
	private IChildrenDAO dao;

	@Override
	public ArrayList<ChildrenVO> NurseryList() {
		return dao.NurseryList();
	}

	@Override
	public ArrayList<ChildrenVO> NurseryListPage(int pagenum) {
		// TODO Auto-generated method stub
		return dao.NurseryListPage(pagenum);
	}

	@Override
	public int total_nurseryInfo() {
		// TODO Auto-generated method stub
		return dao.total_nurseryInfo();
	}
	
	// 어린이집 검색
		@Override
		public ArrayList<ChildrenVO> nurserySearch(String keyword) {
			return dao.nurserySearch(keyword);
		}
}