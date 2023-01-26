package com.littlePirates.project.service;

import java.util.ArrayList;

import org.json.JSONObject;
import org.springframework.web.multipart.MultipartFile;

import com.littlePirates.project.model.BoardVO;

public interface IBoardService {
	
	// 글쓰기
	public void insertBoardText(String memId, String brdTitle, String brdText);
	
	public ArrayList<BoardVO> boardView(String memId);
}
