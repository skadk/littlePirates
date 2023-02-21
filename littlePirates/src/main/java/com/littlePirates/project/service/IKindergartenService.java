package com.littlePirates.project.service;

import java.util.ArrayList;

import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KindergartenVO;

public interface IKindergartenService {
	public ArrayList<KindergartenVO> KindergartenList();
	public ArrayList<KindergartenVO> KindergartenListPage(int pagenum);
	public int total_kindergartenInfo();

}
