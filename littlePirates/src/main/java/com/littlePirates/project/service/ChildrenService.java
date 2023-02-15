package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IChildrenDAO;

import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KindergartenVO;
import com.littlePirates.project.model.PagingVO;

@Service
public class ChildrenService implements IChildrenService {
	@Autowired
	@Qualifier("IChildrenDAO")
	private IChildrenDAO dao;

	@Override
	public ArrayList<ChildrenVO> NurseryList(PagingVO vo) {
		return dao.NurseryList(vo);
	}

	@Override
	public ArrayList<KindergartenVO> KindergartenList() {
		return dao.KindergartenList();

	}

	@Override
	public int countBoard() {
		// TODO Auto-generated method stub
		return dao.countBoard();
	}

	
}