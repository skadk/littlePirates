package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IFleaMarketDAO;
import com.littlePirates.project.model.FleaMarketCommentVO;
import com.littlePirates.project.model.FleaMarketVO;

@Service
public class FleaMarketService implements IFleaMarketService {

	@Autowired
	@Qualifier("IFleaMarketDAO")
	IFleaMarketDAO dao;
	
	@Override
	public ArrayList<FleaMarketVO> listAllBoard() {
		// TODO Auto-generated method stub
		return dao.listAllBoard();
	}

	@Override
	public void insertFleaMarket(FleaMarketVO frd) {
		dao.insertFleaMarket(frd);
	}

	@Override
	public void updateFleaMarket(FleaMarketVO frd) {
		// TODO Auto-generated method stub
		dao.updateFleaMarket(frd);
	}

	@Override
	public void deleteFleaMarket(int flNo) {
		// TODO Auto-generated method stub
		dao.deleteFleaMarket(flNo);
	}
	
	@Override
	public FleaMarketVO fleaMarketText(int flNo) {
		// TODO Auto-generated method stub
		return dao.fleaMarketText(flNo);
	}

	@Override
	public void insertFleaMarketComment(FleaMarketCommentVO flc) {
		// TODO Auto-generated method stub
		dao.insertFleaMarketComment(flc);	
	}
	
	@Override
	public ArrayList<FleaMarketCommentVO> listAllFlCmt( int flNo) {
		// TODO Auto-generated method stub
		
		return dao.listAllFlCmt(flNo);
	}

	

}
