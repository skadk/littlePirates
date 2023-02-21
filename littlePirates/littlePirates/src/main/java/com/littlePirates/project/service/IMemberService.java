package com.littlePirates.project.service;

import java.util.HashMap;

import com.littlePirates.project.model.MemberVO;

public interface IMemberService {
	
	public void signUpMember1(MemberVO vo); // 회원가입1

	public String memIdCheck(String memId); // 아이디 중복 확인
	
	public void signUpMember2(String memId, String memParentNo); // 회원가입2
	
	public void memberDelete(); // 회원가입2 창 나가면 DB 삭제

	public String loginCheck(HashMap<String, Object> map); // 로그인 확인

	public String findId(String memName, String memEmail);

	public String findPwd(String memName, String memEmail);

	public void changePwd(MemberVO vo);
}
