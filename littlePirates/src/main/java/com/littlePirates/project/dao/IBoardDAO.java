package com.littlePirates.project.dao;

import java.util.ArrayList;

import com.littlePirates.project.model.BoardVO;

public interface IBoardDAO {

	public ArrayList<BoardVO> listAllBoard(); // 전체 상품 조회

	public void insertBoard(BoardVO brd); // 제품 정보 등록
}
