package com.littlePirates.project.service;

import java.util.ArrayList;

import com.littlePirates.project.model.KidscafeVO;

public interface IKidscafeService {
	public ArrayList<KidscafeVO> listKidscafeInfo();
	public String searchKidsCafe(String keyword);
	public ArrayList<KidscafeVO> kidscafeSearchkeyword(String kcName);
	public ArrayList<KidscafeVO> kidscafeSearchsido(String sido);

}
