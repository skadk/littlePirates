package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.INBoardDAO;
import com.littlePirates.project.model.NBoardVO;

@Service
public class NBoardService implements INBoardService {
	@Autowired
	@Qualifier("INBoardDAO")
	private INBoardDAO dao;

	@Override
	public ArrayList<NBoardVO> listAllBoard() {
		// TODO Auto-generated method stub
		return dao.listAllBoard();
	}

	@Override
	public void writeNBoard(NBoardVO boa) {
		// TODO Auto-generated method stub
		dao.writeNBoard(boa);
	}

	@Override
	public void updateNBoard(NBoardVO boa) {
		System.out.println(boa.getnBrdTitle());
		System.out.println(boa.getnBrdText());
		dao.updateNBoard(boa);
	}

	@Override
	public void deleteNBoard(String memid) {
		// TODO Auto-generated method stub
		dao.deleteNBoard(memid);
	}

	@Override
	public NBoardVO updateNView(String memid) {
		return dao.updateNView(memid);
		// TODO Auto-generated method stub

	}

	@Override
	public NBoardVO nBoardRead(String memid) {
		// TODO Auto-generated method stub
		return dao.nBoardRead(memid);

	}

	// 후기 검색
	@Override
	public ArrayList<NBoardVO> nBoardSearch(String keyword) {
		return dao.nBoardSearch(keyword);
	}

}
