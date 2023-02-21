package com.littlePirates.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IMemberDAO;
import com.littlePirates.project.model.MemberVO;

@Service
public class MemberService implements IMemberService {

	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override // 회원가입1
	public void signUpMember1(MemberVO vo) {
		// 입력한 비밀번호를 암호화해서 저장
		// vo에서 비밀번호 가져와서 암호화한 후
		String encodedPassword = passwordEncoder.encode(vo.getMemPwd());
		// 암호화된 비밀번호로 저장한 후 db에 저장
		// vo에 암호화된 비밀번호 저장
		vo.setMemPwd(encodedPassword);

		dao.signUpMember1(vo);
	}

	@Override // 아이디 중복 확인
	public String memIdCheck(String memId) {

		String result = dao.memIdCheck(memId);

		return result;
	}
	
	@Override // 회원가입2
	public void signUpMember2(String memId, String memParentNo) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("memParentNo", memParentNo);

		dao.signUpMember2(map);
	}
	
	@Override // 회원가입2 창 나가면 DB 삭제
	public void memberDelete() {
		dao.memberDelete();
	}

	@Override // 로그인 확인
	public String loginCheck(HashMap<String, Object> map) {

		// 전달된 아이디로 암호화된 비밀번호 알아오기
		String encodedPw = dao.loginCheck((String) map.get("memId"));

		String result = "fail";
		// 암호화된 비밀번호와 입력해서 전달된 비밀번호와 일치하는지 확인
		if (encodedPw != null && passwordEncoder.matches((String) map.get("memPwd"), encodedPw)) {

			result = "success";
		}

		return result;
	}

	@Override // 아이디 찾기위해 메일 인증
	public String selectMemId(String memName, String memEmail) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memName", memName);
		map.put("memEmail", memEmail);
		
		String memId = dao.selectMemId(map);
		
		return memId;
	}

	@Override // 아이디 찾기
	public String findId(String memName, String memEmail) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memName", memName);
		map.put("memEmail", memEmail);

		String result = dao.findId(map);
		
		return result;
	}

	@Override // 비밀번호 변경 전 memId 가져오기
	public String findPwd(String memName, String memEmail) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memName", memName);
		map.put("memEmail", memEmail);

		String result = dao.findPwd(map);
		
		return result;
	}

	@Override // 비밀번호 변경하기
	public void changePwd(MemberVO vo) {
		String encodedPassword = passwordEncoder.encode(vo.getMemPwd());

		vo.setMemPwd(encodedPassword);
		
		dao.changePwd(vo);
	}


}
