package com.littlePirates.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.littlePirates.project.model.FleaMarketCommentVO;
import com.littlePirates.project.model.FleaMarketVO;

public interface IFleaMarketService {
	
	public ArrayList<FleaMarketVO> listAllBoard(); // 전체 상품 조회

	public void insertFleaMarket(FleaMarketVO frd); // 제품 정보 등록
	
	public void updateFleaMarket(FleaMarketVO frd); // 상품 수정
	
	public void deleteFleaMarket(int flNo); //상품 삭제
	
	public FleaMarketVO fleaMarketText(int flNo);
	
	public void insertFleaMarketComment(FleaMarketCommentVO flc);// 댓글등록
	
	public ArrayList<FleaMarketCommentVO> listAllFlCmt(int flNo); // 댓글정보 불러오기
	
	/*
	 * public ArrayList<FleaMarketVO> flSearch(HashMap<String, Object> map); // 검색
	 */	
}
