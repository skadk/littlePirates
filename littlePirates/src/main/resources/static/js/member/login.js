/**
 * login.js
 */
 
 $(document).ready(function() {
 	$('#loginForm').on('submit', function(){
 		//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		$.ajax({
 			type:"post",
 			url:"/member/loginForm",
 			data: {"memId":$('#memId').val(),
 			       "memPwd":$('#memPwd').val()},
 			dataType:'text',
 			success:function(result) {
 				if (result == "success") {
 					location.href="/";
 				} else {
 					alert("아이디 또는 비밀번호가 일치하지 않습니다.");
 				}
 			},
 			error:function() {
 				alert("오류 발생\n새로고침 후 이용해주세요.");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
 });