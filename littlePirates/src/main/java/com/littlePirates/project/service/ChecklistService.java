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
	public int ischhChecked(Timestamp chhDate,String memId) {
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("chhDate", chhDate);
		map.put("memId", memId);
		return dao.ischhChecked(map);
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

	public void updateChecklist(ChecklistVO vo) {
		// TODO Auto-generated method stub
		dao.updateChecklist(vo);
	}

	
}

