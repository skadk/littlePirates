package com.littlePirates.project.dao;

import java.util.ArrayList;

import com.littlePirates.project.model.KcreviewVO;

public interface IKcreviewDAO {
	public ArrayList<KcreviewVO> listAll(); //게시판 전체 조회
	public void write(KcreviewVO kcr); // 글 쓰기
}
