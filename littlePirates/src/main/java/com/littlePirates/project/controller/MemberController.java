package com.littlePirates.project.controller;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.littlePirates.project.model.MemberVO;
import com.littlePirates.project.service.EmailService;
import com.littlePirates.project.service.MemberService;

@Controller
public class MemberController {

	private MemberService mservice;
	private EmailService eservice;

	@Autowired
	public MemberController(MemberService mservice, EmailService eservice) {
		this.mservice = mservice;
		this.eservice = eservice;
	}

	// 회원가입1 폼 연결 -> 회원가입1
	@RequestMapping("/member/signUpForm1")
	public String signUpForm1(MemberVO vo) {
		
		mservice.signUpMember1(vo);
		String memId = vo.getMemId();

		return "redirect:/member/signUp2/" + memId;
	}
	
	
	// 회원가입2 페이지 열기
	@RequestMapping("/member/signUp2/{memId}")
	public String signUp2(@PathVariable("memId") String memId) {
		
		return "member/signUp2";
	}
	
	// 회원가입1 폼 연결 -> 회원가입1
	@RequestMapping("/member/signUpForm2")
	public String signUpForm2(MemberVO vo) {
		
		String memId = vo.getMemId();
		String memParentNo = vo.getMemParentNo();
		
		mservice.signUpMember2(memId, memParentNo);
		
		return "member/login";
	}	

	// 아이디 중복 확인 버튼 -> 중복 확인
	@ResponseBody
	@RequestMapping("/member/memIdCheck")
	public String memIdCheck(@RequestParam("memId") String memId, 
							 @RequestParam("checkedId") String checkedId) {
		
		// 서비스 호출하고 DB에 memId 존재하면 memId받고, 존재하지 않으면 null받음
		String memId_result = mservice.memIdCheck(memId);

		String result = "notUsed";

		if (memId_result != null) { // 중복
			result = "used";
		} else { // 중복 아님
			result = "notUsed";
			
			String email_result = eservice.emailMemIdCheck(memId);
			
			if (email_result == null) {
				eservice.emailAuthCreate(memId);
			}
			// 이미 같은 아이디로 중복 확인함	
		}
		
		return result;
	}

	// 인증 이메일 보내기 버튼 -> 인증 이메일 전송, 인증키 DB에 저장
	@ResponseBody
	@RequestMapping("/member/authEmailSend")
	public String authEmailSend(@RequestParam("memId") String memId, 
								@RequestParam("memEmail") String memEmail) {
		
		Random random = new Random();
		StringBuffer key = new StringBuffer();
		
		for (int i = 0; i < 6; i++) {
			int index = random.nextInt(3);
			
			switch (index) {
			case 0:
				key.append((char) ((int) random.nextInt(26) + 97));
				break;
			case 1:
				key.append((char) ((int) random.nextInt(26) + 65));
				break;
			case 2:
				key.append(random.nextInt(10));
				break;
			}
		}
		
		String authKey = key.toString();
		
		eservice.updateEmailAuthKey(memId, authKey);
		
		String body = "<table width='706px' height='476px' bgcolor='#FFF4E9' align='center' style='border-top:3px; border-bottom:3px; border-left:3px; border-right:3px; border-style:dashed; border-color:#70cacd; border-spacing:0;'>" +
					  "<tbody><tr><td width='360px'><img src=\"http://118.67.132.144:8080/image/authCaptain.png\"></td>" + 
					  "<td width='340px'><table border='0' width='340px' height='470px' align='center' style='border-spacing:0;'>" + 
					  "<tbody><tr height='40px'><td style='font-size:30px; font-weight:bold;'><br></td></tr>" + 
					  "<tr height='40px'><td style='font-size:30px; font-weight:bold; color:#42394a;'>환영한다</td></tr>" + 
					  "<tr height='40px'><td style='font-size:30px; font-weight:bold; color:#007F86;'>" + memId + "<b style=' color:#42394a;'>!</b></td></tr>" + 
					  "<tr height='35px'><td style='font-size:20px;'>아래의 인증 번호를 입력해</td></tr>" + 
					  "<tr height='35px'><td style='font-size:20px;'>본인 인증을 완료하길 바란다!</td></tr>" + 
					  "<tr height='40px'><td style='font-size:20px;'>인증키는 <b style='font-size:30px; font-weight:bold; color:#F05757;'>" + authKey + "</b> 이다!</td></tr>" + 
					  "<tr height='35px'><td style='font-size:20px;'>꼬마 해적단 입단을 환영한다~!</td></tr>" + 
					  "<tr height='40px'><td style='font-size:30px; font-weight:bold; color:#42394a;'>크하하하핫!</td></tr>" +
					  "<tr><td><img src=\"http://118.67.132.144:8080/image/authLogo.png\" width='340px' height='165px'></td></tr>" +
					  "</tbody></table></td>" + 
					  "</tr></tbody></table>";
		String sendResult = eservice.sendAuthEamil(memEmail, body);
		
		return sendResult;
	}
	
	// 인증키 확인 버튼 -> 입력된 인증키 확인
	@ResponseBody
	@RequestMapping("/member/authKeyCheck")
	public String authKeyCheck(@RequestParam("memId") String memId, 
							   @RequestParam("authKeyCheck") String authKeyCheck) {
		
		HashMap<String, Object> map = eservice.getKeyAndTime(memId);
		
		String result = "sendPlease";
		
		if (map.get("authKey") != null && map.get("ADDTIME(authTime, '0:03:00')") != null) {
			String authTimeS = map.get("ADDTIME(authTime, '0:03:00')").toString();			
			String emailAuth = map.get("emailAuth").toString();
			
			LocalDateTime authTimePlus = LocalDateTime.parse(authTimeS);
			LocalDateTime now = LocalDateTime.now();
			
			if (now.isBefore(authTimePlus) == true) {
				if (!authKeyCheck.equals("")) {
					if (map.get("authKey").equals(authKeyCheck)) {
						result = "finalCheck";
						eservice.updateEmailAuth1(memId, authKeyCheck);
					} else {
						if (emailAuth.equals("0")) {
							result = "wrong";
						} else {
							result = "alreadyChecked";
						}
					}
				} else {
					result = "checkYourEmail";
					eservice.updateEmailAuth2(memId);
				}
			} else {
				result = "timeOut";				
				eservice.updateEmailAuth0(memId);
			}
		}
		return result;
	}
	
	// 회원가입1 창 나가면 인증 DB 삭제
	@ResponseBody
	@RequestMapping("/member/authDelete")
	public void authDelete(@RequestParam("memId") String memId) {
		
		eservice.emailAuthDelete(memId);
	}
	
	// 회원가입2 창 나가면 인증 DB 삭제
	@ResponseBody
	@RequestMapping("/member/memberDelete")
	public void memberDelete() {
		
		mservice.memberDelete();
	}
	
	// 비밀번호 암호화 한 경우의 로그인 처리 방식
	@ResponseBody
	@RequestMapping("/member/loginForm")
	public String loginCheck(@RequestParam HashMap<String, Object> param, HttpSession session) {
		// 로그인 체크 결과
		String result = mservice.loginCheck(param);

		// 아이디와 비밀번호 일치하면 (로그인 성공하면) 서비스에서 success 반환
		if (result.equals("success")) {
			// 로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", param.get("memId"));
		}
		return result;
	}

	// 로그아웃
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		// 세션 무효화
		session.invalidate();

		return "redirect:/"; // index로 포워딩 -> HomeController에 있는 @RequestMapping("/")
	}

	// 아이디 찾기 폼 이동
	@RequestMapping("/member/findIdForm")
	public String findIdForm() {

		return "member/findIdForm";
	}

	// 아이디 찾기위해 이름 이메일 입력 확인
	@ResponseBody
	@RequestMapping("/member/findId")
	public String findId(@RequestParam("findIdName") String memName, @RequestParam("findIdEmail") String memEmail,
			Model model) {

		String result = mservice.findId(memName, memEmail);
		model.addAttribute("id", result);

		if (result != null) {
			return result;
		} else {
			result = "fail";
			return result;
		}
	}

	// 비밀번호 찾기 폼 이동
	@RequestMapping("/member/findPwdForm")
	public String findPwdForm() {

		return "member/findPwdForm";
	}

	// 비밀번호 찾기 위해 이름이랑 이메일 입력 확인
	@RequestMapping("/member/findPwd")
	public String findPwd(@RequestParam("findPwdName") String memName, @RequestParam("findPwdEmail") String memEmail,
			Model model) {

		String result = mservice.findPwd(memName, memEmail);

		if (result != null) {
			if (result.equals(memName)) {
				return "member/findPwdComplete";
			} else {
				return "redirect:/member/login";
			}
		} else {
			return "redirect:/member/findPwdForm";
		}
	}

	// 비밀번호 변경 (업데이트)
	@RequestMapping("/member/changePwd")
	public String changePwd(MemberVO vo) {

		mservice.changePwd(vo);

		return "member/login"; // 로그인 폼으로 이동
	}

}
