/**
 * changePwd.js
 */
 
 $(document).ready(function() {
 
 	// 비밀번호 보이기 버튼
	$('#pwdShowBtn').on('mousedown', function() {
		$('#memPwd').removeClass('show');
		$('#memPwd').addClass('hidden');
		$('#memPwdShow1').removeClass('hidden');
		$('#memPwdShow1').addClass('show');
		
		$('#memPwdShow1').val($('#memPwd').val());
	});
	
	$('#pwdShowBtn').on('mousedown', function() {
		$('#memPwd2').removeClass('show');
		$('#memPwd2').addClass('hidden');
		$('#memPwdShow2').removeClass('hidden');
		$('#memPwdShow2').addClass('show');
		
		$('#memPwdShow2').val($('#memPwd2').val());
	});
	
	$('#pwdShowBtn').on('mouseup', function() {
		$('#memPwd').removeClass('hidden');
		$('#memPwd').addClass('show');
		$('#memPwdShow1').removeClass('show');
		$('#memPwdShow1').addClass('hidden');
	});
	
	$('#pwdShowBtn').on('mouseup', function() {
		$('#memPwd2').removeClass('hidden');
		$('#memPwd2').addClass('show');
		$('#memPwdShow2').removeClass('show');
		$('#memPwdShow2').addClass('hidden');
	});
	
	$('#pwdShowBtn').on('mouseout', function() {
		$('#memPwd').removeClass('hidden');
		$('#memPwd').addClass('show');
		$('#memPwdShow1').removeClass('show');
		$('#memPwdShow1').addClass('hidden');
	});
	
	$('#pwdShowBtn').on('mouseout', function() {
		$('#memPwd2').removeClass('hidden');
		$('#memPwd2').addClass('show');
		$('#memPwdShow2').removeClass('show');
		$('#memPwdShow2').addClass('hidden');
	});
	
 	$("#changePwdForm").on("submit", function() {
 			 	
 		if ($("#memPwd").val() == "") {
 			alert("비밀번호를 입력해 주세요.");
 			$("#memPwd").focus();
 			
 			return false;
 		};
	 		
 		var id = $("#memId").val();
 		var pwd = $("#memPwd").val();
 		var pwdCheck = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[?~!@#$%^&*]).{8,10}$/;
 		var koreanCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
 		
 		if (pwdCheck.test(pwd) == false) {
 			alert("비밀번호는 8 ~ 10자 이어야 하며 숫자/영문자/특수문자를 모두 포함해야 합니다.");
 			$("#memPwd2").val("");
 			$("#memPwd").focus();
 			
 			return false;
 		
 		} else if (pwd.search(id) > -1) {
 			alert("비밀번호에 아이디가 포함되었습니다.");
 			$("#memPwd2").val("");
 			$("#memPwd").focus();
 			
 			return false;
 			
 		} else if (pwd.search(/\s/) != -1) {
 			alert("비밀번호는 공백 없이 입력해 주세요.");
 			$("#memPwd2").val("");
 			$("#memPwd").focus();
 			
 			return false;
 			
 		} else if (koreanCheck.test(pwd)) {
 			alert("비밀번호에 한글 없이 입력해 주세요.");
 			$("#memPwd2").val("");
 			$("#memPwd").focus();
 			
 			return false;
 		};
 		
 		if ($("#memPwd2").val() !== $("#memPwd").val()) {
 			alert("비밀번호가 일치하는지 확인해 주세요.");
 			$("#memPwd2").val("");
 			$("#memPwd2").focus();
 			
 			return false;
 		};
	});
 });