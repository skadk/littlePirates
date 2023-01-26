package com.littlePirates.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.littlePirates.project.model.BoardVO;

public interface IBoardDAO {

	// 글쓰기
	public void insertBoardText(HashMap<String, Object> map);
	
	public ArrayList<BoardVO> boardView(String memId);
	
}
