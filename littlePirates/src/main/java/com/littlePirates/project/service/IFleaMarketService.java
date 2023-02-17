package com.littlePirates.project.service;

import java.util.ArrayList;

import com.littlePirates.project.model.FleaMarketVO;

public interface IFleaMarketService {
	
	public ArrayList<FleaMarketVO> listAllBoard(); // 전체 상품 조회

	public void insertFleaMarket(FleaMarketVO frd); // 제품 정보 등록
	
	public void updateFleaMarket(FleaMarketVO frd); // 상품 수정
	
	public void deleteFleaMarket(int flNo); //상품 삭제
	
	public FleaMarketVO fleaMarketText(int flNo);
}
