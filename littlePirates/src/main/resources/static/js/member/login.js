/**
 * login.js
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
	
	$('#pwdShowBtn').on('mouseup', function() {
		$('#memPwd').removeClass('hidden');
		$('#memPwd').addClass('show');
		$('#memPwdShow1').removeClass('show');
		$('#memPwdShow1').addClass('hidden');
	});
	
	$('#pwdShowBtn').on('mouseout', function() {
		$('#memPwd').removeClass('hidden');
		$('#memPwd').addClass('show');
		$('#memPwdShow1').removeClass('show');
		$('#memPwdShow1').addClass('hidden');
	});
 
 	$('#loginForm').on('submit', function(){
 		//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		$.ajax({
 			type:"post",
 			url:"/member/loginForm",
 			data: {"memId":$('#memId').val(),
 			       "memPwd":$('#memPwd').val(),
 			       "memParentNo":$('#memParentNo').val()},
 			dataType:'text',
 			success:function(result) {
 				if (result == "success" || result == "parentSuccess") {
 					location.href="/";
 				} else if (result == "parentFail") {
 					alert("부모번호가 일치하지 않습니다.");
 				} else {
 					alert("아이디 또는 비밀번호가 일치하지 않습니다.");
 				}
 			},
 			error:function() {
	 			alert("새로고침 후 다시 시도해주세요.");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
 });