package com.littlePirates.project.dao;

import java.util.ArrayList;
import com.littlePirates.project.model.BoardVO;
import java.util.HashMap;

public interface IBoardDAO {

	public ArrayList<BoardVO> listAllBoard(); // 전체 상품 조회

	public void insertBoardText(BoardVO brdVO);
	
	public ArrayList<BoardVO> boardView(String memId);
	
}
