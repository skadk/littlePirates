package com.littlePirates.project.service;

import java.util.ArrayList;

import com.littlePirates.project.model.BoardVO;

public interface IBoardService {

	public ArrayList<BoardVO> listAllBoard(); // 전체 게시글 조회

	public void insertBoard(BoardVO prd); // 글쓰기
}
