package com.littlePirates.project.dao;

import java.util.ArrayList;


import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KBoardVO;
import com.littlePirates.project.model.KidscafeVO;
import com.littlePirates.project.model.KindergartenVO;

public interface IChildrenDAO {
	public ArrayList<ChildrenVO> NurseryList();
	public ArrayList<ChildrenVO> NurseryListPage(int pagenum);
	public int total_nurseryInfo();
	
	public ArrayList<ChildrenVO> nurserySearch(String keyword);// 후기 검색

}
