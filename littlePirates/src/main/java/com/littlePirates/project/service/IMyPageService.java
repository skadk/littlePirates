package com.littlePirates.project.service;

import com.littlePirates.project.model.MemberVO;


public interface IMyPageService {

	public MemberVO detailViewMyPage(String memId);// 회원정보조회
	
	public void updateMyPage(MemberVO mem); // 회원정보수정
	
	public void deleteMyPage(MemberVO mem); // 회원정보수정	

}