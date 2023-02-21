package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IKindergartenDAO;
import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KindergartenVO;

@Service
public class KindergartenService implements IKindergartenService{
	
	@Autowired
	@Qualifier("IKindergartenDAO")
	private IKindergartenDAO dao;
	@Override
	public ArrayList<KindergartenVO> KindergartenList() {
		// TODO Auto-generated method stub
		return dao.KindergartenList();
	}

	@Override
	public ArrayList<KindergartenVO> KindergartenListPage(int pagenum) {
		// TODO Auto-generated method stub
		return dao.KindergartenListPage(pagenum);
	}

	@Override
	public int total_kindergartenInfo() {
		// TODO Auto-generated method stub
		return dao.total_kindergartenInfo();
	}
}
