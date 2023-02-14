package com.littlePirates.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.littlePirates.project.model.BoardVO;

public interface IBoardDAO {

	public ArrayList<BoardVO> listAllBoard(); // 전체 상품 조회

	public void insertBoard(BoardVO brd); // 제품 정보 등록

	public void insertBoardText(HashMap<String, Object> map);
	
	public ArrayList<BoardVO> boardView(String memId);
	
}
