package com.littlePirates.project.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.littlePirates.project.model.ChecklistVO;

public interface IChecklistDAO {

	public ArrayList<ChecklistVO> checklistInfo(String memId);
	
	public ArrayList<String> checklistInfo2();
	
	public ArrayList<ChecklistVO> checklistInfo3(String memId);

	public void insertChecklist(ChecklistVO vo);

	public void updateChecklist(ChecklistVO vo);

	public int ischhChecked(String memId);
//	public int currentChecklist(String memId);
	
	public ArrayList<ChecklistVO> selectChecklist(String memId);
	
	public String getChecklistText(String chlNo);
	
	public int searchMemId(String memId);
	
	public void insertTimes(HashMap<String, Object> map);
	
	public String checkDate(HashMap<String, Object> map);
	
	public String checkNo1(HashMap<String, Object> map);
	public String checkNo2(HashMap<String, Object> map);
	public String checkNo3(HashMap<String, Object> map);
	public String checkNo4(HashMap<String, Object> map);
	public String checkNo5(HashMap<String, Object> map);
	public String checkNo6(HashMap<String, Object> map);
	public String checkNo7(HashMap<String, Object> map);
	public String checkNo8(HashMap<String, Object> map);
	public String checkNo9(HashMap<String, Object> map);
	
	public void updateChecked1(HashMap<String, Object> map);
	public void updateChecked2(HashMap<String, Object> map);
	public void updateChecked3(HashMap<String, Object> map);
	public void updateChecked4(HashMap<String, Object> map);
	public void updateChecked5(HashMap<String, Object> map);
	public void updateChecked6(HashMap<String, Object> map);
	public void updateChecked7(HashMap<String, Object> map);
	public void updateChecked8(HashMap<String, Object> map);
	public void updateChecked9(HashMap<String, Object> map);

	public Map<String, Object> getChl_Checked(HashMap<String, Object> map);

	public List<ChecklistVO> getUncheckedHistories(String memId);

	 // memId와 chh_Checked 값을 기준으로 chlNo1_Checked~chlNo9_Checked 값을 조회하는 메소드
	public List<String> getCheckedValues(String memId);

}
