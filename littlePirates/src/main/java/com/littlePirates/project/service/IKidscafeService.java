package com.littlePirates.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.littlePirates.project.model.KidscafeVO;

public interface IKidscafeService {
	public ArrayList<KidscafeVO> listKidscafeInfo();
	public ArrayList<KidscafeVO> listKidscafeInfopage(int pagenum);
	public int total_kidscafeinfo();
	
	public String searchKidsCafe(String keyword);
	public ArrayList<KidscafeVO> kidscafeSearchkeyword(String kcName);

	public ArrayList<KidscafeVO> kidscafeSearchsido(String sido);
	public ArrayList<KidscafeVO> kidscafeSearchsidopage(String sido, int pagenum);
	public int total_kidscafeSearchsido(String sido);
	
	public ArrayList<KidscafeVO> kidscafeSearchgu(String sido, String gu);
	public ArrayList<KidscafeVO> kidscafeSearchgupage(String sido, String gu, int pagenum);
	public int total_kidscafeSearchgu(String sido, String gu);
}
