package com.littlePirates.project.dao;

import java.util.HashMap;

public interface IEmailDAO {
	
	public void emailAuthCreate(String memId); // 이메일 인증 시 테이블 생성
	
	public String emailMemIdCheck(String memId); // 이메일 테이블에 이미 아이디 있는지 확인
	
	public void updateEmailAuthKey(HashMap<String, Object> map); // 이메일 인증 키 DB 저장
	
	public HashMap<String, Object> getKeyAndTime(String memId); // 인증키와 시간 DB에서 가져오기
	
	public void updateEmailAuth0(String memId); // 인증 상태 변경0
	
	public void updateEmailAuth1(HashMap<String, Object> map); // 인증 상태 변경1
	
	public void updateEmailAuth2(String memId); // 인증 상태 변경2
	
	public void emailAuthDelete(String memId); // 회원가입1 창 나가면 인증 DB 삭제
}
