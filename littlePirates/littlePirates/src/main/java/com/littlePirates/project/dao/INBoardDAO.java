package com.littlePirates.project.dao;

import java.util.ArrayList;

import com.littlePirates.project.model.NBoardVO;

public interface INBoardDAO {
	 public ArrayList<NBoardVO>listAllBoard(); //게시판 전체 조회
	    public void writeNBoard(NBoardVO boa);//게시글 쓰기
	    public void updateNBoard(NBoardVO boa);//게시글 수정
	    public void deleteNBoard(String memId);//게시글 삭제
	    public NBoardVO updateNView(String memId);//조회수증감
	    public NBoardVO nBoardRead (String nBrdNo);
	    public ArrayList<NBoardVO> nBoardSearch(String keyword);// 후기 검색
}
