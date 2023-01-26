package com.littlePirates.project.service;

import java.util.ArrayList;


import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KindergartenVO;

public interface IChildrenService {
	public ArrayList<ChildrenVO> NurseryList();
	public ArrayList<KindergartenVO> KindergartenList();

}
