package com.littlePirates.project.service;

import java.util.ArrayList;

import com.littlePirates.project.model.KcreviewVO;

public interface IKcreviewService {
	public ArrayList<KcreviewVO> listAll(); //게시판 전체 조회
	public void write(KcreviewVO kcr); // 글 쓰기
	public KcreviewVO read(String kcrNo); // 세부 글 보기
	public void update(KcreviewVO kcr); // 글 수정
	public void delete(String kcrNo); // 글 삭제

	public ArrayList<KcreviewVO> kcSearch(String kckeyword); // 후기 검색
}
