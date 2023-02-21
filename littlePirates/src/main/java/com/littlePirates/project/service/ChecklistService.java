package com.littlePirates.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
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
	public ArrayList<ChecklistVO> checklistInfo(String memId){
		return dao.checklistInfo(memId);
	}
	
	@Override
	public void insertChecklist(ChecklistVO vo) {
		dao.insertChecklist(vo);
	}
	
	@Override
	public int ischhChecked(String memId) {
			
		return dao.ischhChecked(memId);
	}
/*	
	@Override
	public int currentChecklist(int chhTimes) {
		return dao.currentChecklist(chhTimes);
	}
*/	
	@Override
	public ArrayList<String> checklistInfo2() {

		return dao.checklistInfo2();
	}
	
	@Override
	public ArrayList<ChecklistVO> checklistInfo3(String memId) {

		return dao.checklistInfo3(memId);
	}
	
	// 체크리스트 최초생성
	@Override
	public ArrayList<ChecklistVO> selectChecklist(String memId) {

		return dao.selectChecklist(memId);
	}
	
	// 체크리스트 생성 된 내역 있을 시 불러오기
	@Override
	public String getChecklistText(String chlNo) {

		return dao.getChecklistText(chlNo);
	}

	@Override
	public int searchMemId(String memId) {
		
		int result = dao.searchMemId(memId);
		
		return result;
	}
	
	@Override
	public void insertTimes(String memId, int countMemId) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("countMemId", countMemId);
		
		dao.insertTimes(map);
	}

	@Override
	public String checkDate(String memId, String nowTime) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("nowTime", nowTime);
				
		String result = dao.checkDate(map);
		
		return result;
	}

	@Override
	public String checkNo(String memId, int checkedNo) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("checkedNo", checkedNo);
		
		String result = "";
		
		if (checkedNo == 1) {
			result = dao.checkNo1(map);
		} else if (checkedNo == 2) {
			result = dao.checkNo2(map);
		} else if (checkedNo == 3) {
			result = dao.checkNo3(map);
		} else if (checkedNo == 4) {
			result = dao.checkNo4(map);
		} else if (checkedNo == 5) {
			result = dao.checkNo5(map);
		} else if (checkedNo == 6) {
			result = dao.checkNo6(map);
		} else if (checkedNo == 7) {
			result = dao.checkNo7(map);
		} else if (checkedNo == 8) {
			result = dao.checkNo8(map);
		} else if (checkedNo == 9) {
			result = dao.checkNo9(map);
		}
		
		return result;
	}

	@Override
	public void updateChecked(String memId, int checkedNo, String nowTime) {
		
		System.out.println(nowTime);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("checkedNo", checkedNo);
		map.put("nowTime", nowTime);
		
		System.out.println(nowTime);

		if (checkedNo == 1) {
			dao.updateChecked1(map);
		} else if (checkedNo == 2) {
			dao.updateChecked2(map);
		} else if (checkedNo == 3) {
			dao.updateChecked3(map);
		} else if (checkedNo == 4) {
			dao.updateChecked4(map);
		} else if (checkedNo == 5) {
			dao.updateChecked5(map);
		} else if (checkedNo == 6) {
			dao.updateChecked6(map);
		} else if (checkedNo == 7) {
			dao.updateChecked7(map);
		} else if (checkedNo == 8) {
			dao.updateChecked8(map);
		} else if (checkedNo == 9) {
			dao.updateChecked9(map);
		}
	}

	@Override
	public ArrayList<ChecklistVO> checklistInfo() {
		// TODO Auto-generated method stub
		return null;
	}


    @Override
    public ChecklistVO getChecked(String memId) {
       return dao.getChecked(memId);
    }
}

