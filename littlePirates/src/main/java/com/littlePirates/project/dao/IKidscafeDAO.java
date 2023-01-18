package com.littlePirates.project.dao;

import java.util.ArrayList;

import com.littlePirates.project.model.KidscafeVO;

public interface IKidscafeDAO {
	public ArrayList<KidscafeVO> listKidscafeInfo();
	
	public String searchKidsCafe(String keyword);
}
