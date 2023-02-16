package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IKBoardDAO;
import com.littlePirates.project.model.KBoardVO;

@Service
public class KBoardService implements IKBoardService {
	@Autowired
	@Qualifier("IKBoardDAO")
	private IKBoardDAO dao;

	@Override
	public ArrayList<KBoardVO> listAllBoard() {
		// TODO Auto-generated method stub
		return dao.listAllBoard();
	}

	@Override
	public void writeKBoard(KBoardVO boa) {
		// TODO Auto-generated method stub
		dao.writeKBoard(boa);
	}

	@Override
	public void updateKBoard(KBoardVO boa) {
		System.out.println(boa.getkBrdTitle());
		System.out.println(boa.getkBrdText());
		dao.updateKBoard(boa);
	}

	@Override
	public void deleteKBoard(String kBrdNo) {
		// TODO Auto-generated method stub
		dao.deleteKBoard(kBrdNo);
	}

	@Override
	public KBoardVO updateKView(String kBrdNo) {
		return dao.updateKView(kBrdNo);
		// TODO Auto-generated method stub

	}

	@Override
	public KBoardVO kBoardRead(String kBrdNo) {
		// TODO Auto-generated method stub
		return dao.kBoardRead(kBrdNo);

	}

	// 후기 검색
	@Override
	public ArrayList<KBoardVO> kBoardSearch(String keyword) {
		return dao.kBoardSearch(keyword);
	}

}
