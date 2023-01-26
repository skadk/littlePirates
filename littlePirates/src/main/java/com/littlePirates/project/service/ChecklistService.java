package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IChecklistDAO;
import com.littlePirates.project.model.ChecklistVO;

@Service
public class ChecklistService implements IChecklistService{

	@Autowired
	@Qualifier("IChecklistDAO")
	private IChecklistDAO dao;
	
	@Override
	public ArrayList<ChecklistVO> checklistInfo(){
		return dao.checklistInfo();
	}
	
	@Override
	public ArrayList<ChecklistVO> checklistInfo2() {

		return dao.checklistInfo2();
	}
	
	@Override
	public ArrayList<ChecklistVO> checklistInfo3() {
		// TODO Auto-generated method stub
		return dao.checklistInfo3();
	}

	
}

