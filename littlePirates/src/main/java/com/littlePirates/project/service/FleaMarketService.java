package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IFleaMarketDAO;
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
	public void insertFleaMarket(FleaMarketVO brd) {
		dao.insertFleaMarket(brd);
	}

	@Override
	public void updateProduct(FleaMarketVO prd) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProduct(String flNo) {
		// TODO Auto-generated method stub
		
	}

}
