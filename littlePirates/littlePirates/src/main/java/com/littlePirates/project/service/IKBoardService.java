package com.littlePirates.project.service;

import java.util.ArrayList;

import com.littlePirates.project.model.KBoardVO;

public interface IKBoardService {
	public ArrayList<KBoardVO> listAllBoard(); // 게시판 전체 조회

	public void writeKBoard(KBoardVO boa);// 게시글 쓰기

	public void updateKBoard(KBoardVO boa);// 게시글 수정

	public void deleteKBoard(String kBrdNo);// 게시글 삭제

	public KBoardVO updateKView(String memid);// 조회수증감

	public KBoardVO kBoardRead(String kBrdNo);
	
	public ArrayList<KBoardVO> kBoardSearch(String keyword);// 후기 검색
}
