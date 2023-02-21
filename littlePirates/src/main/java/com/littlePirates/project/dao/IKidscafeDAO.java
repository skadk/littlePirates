package com.littlePirates.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.littlePirates.project.model.KidscafeVO;

public interface IKidscafeDAO {
	public ArrayList<KidscafeVO> listKidscafeInfo();
	public ArrayList<KidscafeVO> listKidscafeInfopage(int pagenum);
	public int total_kidscafeinfo();
	
	public String searchKidsCafe(String keyword);
	public ArrayList<KidscafeVO> kidscafeSearchkeyword(String kcName);
	
	public ArrayList<KidscafeVO> kidscafeSearchsido(String sido);
	public ArrayList<KidscafeVO> kidscafeSearchsidopage(HashMap<String, Object> map);
	public int total_kidscafeSearchsido(String sido);
	
	public ArrayList<KidscafeVO> kidscafeSearchgu(HashMap<String, Object> map);
	public ArrayList<KidscafeVO> kidscafeSearchgupage(HashMap<String, Object> map);
	public int total_kidscafeSearchgu(HashMap<String, Object> map);


}
