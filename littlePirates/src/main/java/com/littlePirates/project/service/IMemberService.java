package com.littlePirates.project.service;

import java.util.HashMap;

import com.littlePirates.project.model.MemberVO;

public interface IMemberService {
	
	public void signUpMember(MemberVO vo); // 회원가입

	public String memIdCheck(String memId); // 아이디 중복 확인

	public String loginCheck(HashMap<String, Object> map); // 로그인 확인

	public String findId(String memName, String memEmail);

	public String findPwd(String memName, String memEmail);

	public void changePwd(MemberVO vo);
}
