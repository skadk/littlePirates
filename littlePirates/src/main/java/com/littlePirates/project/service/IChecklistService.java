package com.littlePirates.project.service;

import java.util.ArrayList;

import com.littlePirates.project.model.ChecklistVO;

public interface IChecklistService {
	public ArrayList<ChecklistVO> checklistInfo();

	public ArrayList<String> checklistInfo2();

	public ArrayList<ChecklistVO> checklistInfo3(String memId);

	public void insertChecklist(ChecklistVO vo);

	public int ischhChecked(String memId);
//	public int currentChecklist(String memId);

	public ArrayList<ChecklistVO> selectChecklist(String memId);

	public String getChecklistText(String chlNo);

	public int searchMemId(String memId);

	public void insertTimes(String memId, int countMemId);

	public String checkDate(String memId, String nowTime);
	
	public String checkNo(String memId, int checkedNo);

	void updateChecked(String memId, int checkedNo, String nowTime);
	
	/*
	 * public void updateChecked(String memId, int checkedNo, String nowTime);
	 */


	
}
