package com.littlePirates.project.dao;

import java.util.ArrayList;

import com.littlePirates.project.model.ChildrenVO;
import com.littlePirates.project.model.KindergartenVO;

public interface IChildrenDAO {
	public ArrayList<KindergartenVO> KindergartenList();
	public int countBoard();


}
