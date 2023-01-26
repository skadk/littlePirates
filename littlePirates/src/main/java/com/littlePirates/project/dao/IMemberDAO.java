package com.littlePirates.project.dao;

import java.util.HashMap;

import com.littlePirates.project.model.MemberVO;

public interface IMemberDAO {
	public void signUpMember(MemberVO vo); // 회원가입
	
	public String memIdCheck(String memId); // 아이디 중복 확인
	
	public String loginCheck(String id); // 로그인 확인
	
	public String findId(HashMap<String, Object> map);
	
	public String findPwd(HashMap<String, Object> map);
	
	public void changePwd(MemberVO vo);
}
