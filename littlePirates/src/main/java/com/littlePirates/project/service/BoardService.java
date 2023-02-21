package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.littlePirates.project.dao.IBoardDAO;
import com.littlePirates.project.model.BoardVO;
import java.util.HashMap;

@Service
public class BoardService implements IBoardService {

	@Autowired
	@Qualifier("IBoardDAO")
	IBoardDAO dao;
	
	@Override
	public ArrayList<BoardVO> listAllBoard() {
		// TODO Auto-generated method stub
		return dao.listAllBoard();
	}

	@Override
	public void insertBoardText(BoardVO brdVO) {

		dao.insertBoardText(brdVO);
	}

	@Override
	public ArrayList<BoardVO> boardView(String memId) {

		return dao.boardView(memId);
	}

}
