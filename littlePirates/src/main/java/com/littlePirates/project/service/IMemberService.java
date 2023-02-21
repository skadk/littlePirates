package com.littlePirates.project.service;

import java.util.HashMap;

import com.littlePirates.project.model.MemberVO;

public interface IMemberService {
	
	public void signUpMember1(MemberVO vo); // 회원가입1

	public String memIdCheck(String memId); // 아이디 중복 확인
	
	public void signUpMember2(String memId, String memParentNo); // 회원가입2
	
	public void memberDelete(); // 회원가입2 창 나가면 DB 삭제

	public String loginCheck(HashMap<String, Object> map); // 로그인 확인
	
	public String selectMemId(String memName, String mamEmail); // 아이디 찾기위해 메일 인증

	public String findId(String memName, String memEmail); // 아이디 찾기

	public String findPwd(String memName, String memEmail); // 비밀번호 변경 전 memId 가져오기

	public void changePwd(MemberVO vo); // 비밀번호 변경하기
}
