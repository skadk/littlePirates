package com.littlePirates.project.dao;

import java.util.ArrayList;

import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KindergartenVO;

public interface IKindergartenDAO {
	public ArrayList<KindergartenVO> KindergartenList();
	public ArrayList<KindergartenVO> KindergartenListPage(int pagenum);
	public int total_kindergartenInfo();
}
