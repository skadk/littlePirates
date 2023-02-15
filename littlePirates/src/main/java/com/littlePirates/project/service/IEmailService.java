package com.littlePirates.project.service;

import java.util.HashMap;

public interface IEmailService {

	public void emailAuthCreate(String memId); // 이메일 인증 시 테이블 생성
	
	public String emailMemIdCheck(String memId); // 이메일 테이블에 이미 아이디 있는지 확인
	
	public void updateEmailAuthKey(String memId, String authKey); // 이메일 인증 키 DB 저장
	
	public String sendAuthEamil(String memEmail, String body); // 인증 이메일 보내기
	
	public HashMap<String, Object> getKeyAndTime(String memId); // 인증키와 시간 DB에서 가져오기
	
	public void updateEmailAuth1(String memId, String authKeyCheck); // 인증 상태 변경1
	
	public void updateEmailAuth0(String memId); // 인증 상태 변경0
	
	public String checkEmailAuth(String memId); // 인증 확인
	
	public void emailAuthDelete(); // 회원가입 창 나가면 인증 DB 삭제
}