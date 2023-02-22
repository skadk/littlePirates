package com.littlePirates.project.service;

import java.util.ArrayList;

import com.littlePirates.project.model.BoardVO;
import com.littlePirates.project.model.FleaMarketVO;

import org.json.JSONObject;
import org.springframework.web.multipart.MultipartFile;


public interface IBoardService {

	public ArrayList<BoardVO> listAllBoard(); // 전체 게시글 조회

	public void insertBoardText(BoardVO brdVO);
	
	public ArrayList<BoardVO> boardView(String memId);
	
	public BoardVO boardText(int brdNo);

}
