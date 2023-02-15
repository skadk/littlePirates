package com.littlePirates.project.service;

import java.util.ArrayList;

import com.littlePirates.project.model.FleaMarketVO;

public interface IFleaMarketService {
	
	public ArrayList<FleaMarketVO> listAllBoard(); // 전체 상품 조회

	public void insertFleaMarket(FleaMarketVO brd); // 제품 정보 등록
	
	public void updateProduct(FleaMarketVO prd); // 상품 수정
	
	public void deleteProduct(String flNo); //상품 삭제
}
