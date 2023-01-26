package com.littlePirates.project.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;

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
	public void insertChecklist(ChecklistVO vo) {
		dao.insertChecklist(vo);
	}
	
	@Override
	public int ischhChecked(String memId) {
		
	
		return dao.ischhChecked(memId);
	}
	
	@Override
	public ArrayList<String> checklistInfo2() {

		return dao.checklistInfo2();
	}
	
	@Override
	public ArrayList<ChecklistVO> checklistInfo3() {
		// TODO Auto-generated method stub
		return dao.checklistInfo3();
	}
	
	@Override
	public ArrayList<ChecklistVO> selectChecklist(String memId) {
		// TODO Auto-generated method stub
		return dao.selectChecklist(memId);
	}
	
	@Override
	public String getChecklistText(String chlNo) {
		// TODO Auto-generated method stub
		return dao.getChecklistText(chlNo);
	}
	
}

