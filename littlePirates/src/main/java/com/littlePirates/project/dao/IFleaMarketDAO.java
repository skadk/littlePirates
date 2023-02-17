package com.littlePirates.project.dao;

import java.util.ArrayList;

import com.littlePirates.project.model.FleaMarketVO;


public interface IFleaMarketDAO {

	public ArrayList<FleaMarketVO> listAllBoard(); // 전체 상품 조회

	public void insertFleaMarket(FleaMarketVO prd); // 제품 정보 등록
	
	public void updateProduct(FleaMarketVO prd); // 상품 수정
	
	public void deleteProduct(String flNo); //상품 삭제
	
}
