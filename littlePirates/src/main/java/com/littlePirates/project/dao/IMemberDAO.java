package com.littlePirates.project.dao;

import java.util.HashMap;

import com.littlePirates.project.model.MemberVO;

public interface IMemberDAO {
	
	public void signUpMember1(MemberVO vo); // 회원가입1
	
	public String memIdCheck(String memId); // 아이디 중복 확인
	
	public void signUpMember2(HashMap<String, Object> map); // 회원가입2
	
	public void memberDelete(); // 회원가입2 창 나가면 DB 삭제
	
	public String loginCheck(String id); // 로그인 확인
	
	public String selectMemId(HashMap<String, Object> map); // 아이디 찾기위해 메일 인증
	
	public String findId(HashMap<String, Object> map); // 아이디 찾기
	
	public String findPwd(HashMap<String, Object> map); // 비밀번호 변경 전 memId 가져오기
	
	public void changePwd(MemberVO vo); // 비밀번호 변경하기
}
