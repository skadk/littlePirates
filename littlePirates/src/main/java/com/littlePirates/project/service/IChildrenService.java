package com.littlePirates.project.service;

import java.util.ArrayList;


import com.littlePirates.project.model.KindergartenVO;

public interface IChildrenService {
	public ArrayList<KindergartenVO> KindergartenList();
	public int countBoard();
	
}
