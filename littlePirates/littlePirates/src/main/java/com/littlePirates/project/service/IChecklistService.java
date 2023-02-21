package com.littlePirates.project.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	ArrayList<ChecklistVO> checklistInfo(String memId);

	  // memId와 chh_Checked 값을 기준으로 chlNo1_Checked~chlNo9_Checked 값을 조회하는 메소드
	public List<String> getCheckedValues(String memId);

	
}
