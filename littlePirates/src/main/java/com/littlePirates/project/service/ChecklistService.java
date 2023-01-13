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

	public void updateChecklist(ChecklistVO Checked) {
		dao.updateCheckList(Checked);
	} 

	@Override
	public void updateCheckList(ChecklistVO Checked) {
		// TODO Auto-generated method stub
		
	}

	
}



