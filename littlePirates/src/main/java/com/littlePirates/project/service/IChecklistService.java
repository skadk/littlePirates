package com.littlePirates.project.service;

import java.sql.Timestamp;
import java.util.ArrayList;

import com.littlePirates.project.model.ChecklistVO;

public interface IChecklistService {
	public ArrayList<ChecklistVO> checklistInfo();
	public ArrayList<ChecklistVO> checklistInfo2();
	public ArrayList<ChecklistVO> checklistInfo3();
	void insertChecklist(ChecklistVO vo);
	int ischhChecked(Timestamp chhDate, String memId);
}
