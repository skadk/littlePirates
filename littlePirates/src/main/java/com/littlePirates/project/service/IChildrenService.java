package com.littlePirates.project.service;

import java.util.ArrayList;


import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KindergartenVO;
import com.littlePirates.project.model.PagingVO;

public interface IChildrenService {
	public ArrayList<ChildrenVO> NurseryList(PagingVO vo);
	public ArrayList<KindergartenVO> KindergartenList();
	public int countBoard();
	
}
