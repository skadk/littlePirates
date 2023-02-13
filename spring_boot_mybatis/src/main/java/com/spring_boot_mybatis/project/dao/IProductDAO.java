package com.spring_boot_mybatis.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_mybatis.project.model.ProductVO;

public interface IProductDAO {
	public ArrayList<ProductVO> listAllProduct(); // 전체 상품 조회

	public void insertProduct(ProductVO prd); // 제품 정보 등록

	public void updateProduct(ProductVO prd); // 제품 정보 수정

	public void deleteProduct(String prdNo); // 제품 정보 삭제

	public ProductVO detailViewProduct(String prdNo); // 제품 상세 조회
	
	public String prdNoCheck(String prdNo); // 제품 번호 중복 확인
	
	public ArrayList<ProductVO> productSearch(HashMap<String, Object> map); // 제품 검색
}
