/**
 * findIdPwd.js
 */
 
 // 폼 확인
 $(document).ready(function() {
 	$("#findIdForm").on("submit", function() {
 		// 폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 	
 		if ($("#memName").val() == "") {
 			alert("이름을 입력해 주세요.");
 			$("#memName").focus();
 			
 			return false;
 		};
 		
 		if ($("#memEmail").val() == "") {
 			alert("이메일을 입력해 주세요.");
 			$("#memEmail").focus();
 			
 			return false;
 		};
 		
 		if ($("#authKeyCheck").val() == "") {
 			alert("인증 이메일 확인 후 인증키를 입력해 주세요.");
 			$("#authKeyCheck").focus();
 			
 			return false;
 		};
 		
 		if ($("#checkedAuth").val() == "") {
 			alert("이메일 인증을 하지 않았습니다.");
 			
 			return false;
 		};
 		
 		$.ajax({
 			type:"post",
 			url:"/member/findId",
 			data:{"memName":$('#memName').val(),
 				  "memEmail":$('#memEmail').val()},
 			dataType:"text",
 			success:function(result) {
 				if (result != "fail") {
 					alert("크하핫!\n네가 찾는 아이디는 " + result + " 이다!");
 					location.href="/member/loginAfterSearch?memId=" + result;
 				} else {
 					alert("ID 찾기를 실패했습니다. 입력한 정보를 다시 확인해 주세요.");
 					location.href="/member/findIdPwd";
 				}
 			},
 			error:function() {
 				alert("새로고침 후 다시 시도해주세요.");
 			}
 		}); // ajax 종료
 	}); // submit 종료
 });
 
 // 폼 확인
 $(document).ready(function() {
 	$("#findPwdForm").on("submit", function() {
 		// 폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 	
 		if ($("#memName2").val() == "") {
 			alert("이름을 입력해 주세요.");
 			$("#memName2").focus();
 			
 			return false;
 		};
 		
 		if ($("#memId2").val() == "") {
 			alert("아이디를 입력해 주세요.");
 			$("#memId2").focus();
 			
 			return false;
 		};
 		
 		if ($("#memEmail2").val() == "") {
 			alert("이메일을 입력해 주세요.");
 			$("#memEmail2").focus();
 			
 			return false;
 		};
 		
 		if ($("#authKeyCheck2").val() == "") {
 			alert("인증 이메일 확인 후 인증키를 입력해 주세요.");
 			$("#authKeyCheck2").focus();
 			
 			return false;
 		};
 		
 		if ($("#checkedAuth2").val() == "") {
 			alert("이메일 인증을 하지 않았습니다.");
 			
 			return false;
 		};
 		
 		$.ajax({
 			type:"post",
 			url:"/member/findPwd",
 			data:{"memName":$('#memName2').val(), 
 				  "memId":$('#memId2').val(),
 				  "memEmail":$('#memEmail2').val()},
 			dataType:"text",
 			success:function(result) {
 				if (result == "success") {
 					location.href="/member/changePwd?memId=" + $('#memId2').val();
 				} else if (result == "fail") {
 					alert("이름 또는 아이디가 일치하지 않습니다.");
 				} else {
 					alert("가입되지 않은 아이디 입니다.");
 				}
 			},
 			error:function() {
 				alert("새로고침 후 다시 시도해주세요.");
 			}
 		}); // ajax 종료
 	}); // submit 종료
 });
 
 $(document).ready(function() {
 	
 	// 아이디 찾기 버튼
	$('#findIdOpen').on('click', function() {
		$('#findPwdForm').removeClass('show');
		$('#findPwdForm').addClass('hidden');
		$('#findIdForm').removeClass('hidden');
		$('#findIdForm').addClass('show');
		
		$('#findPwdOpen').removeClass('showBtn');
		$('#findPwdOpen').addClass('hiddenBtn');
		$('#findIdOpen').removeClass('hiddenBtn');
		$('#findIdOpen').addClass('showBtn');
	});
	
 	// 비밀번호 변경 버튼
	$('#findPwdOpen').on('click', function() {
		$('#findIdForm').removeClass('show');
		$('#findIdForm').addClass('hidden');
		$('#findPwdForm').removeClass('hidden');
		$('#findPwdForm').addClass('show');
		
		$('#findIdOpen').removeClass('showBtn');
		$('#findIdOpen').addClass('hiddenBtn');
		$('#findPwdOpen').removeClass('hiddenBtn');
		$('#findPwdOpen').addClass('showBtn');
	});

	// 인증 이메일 보내기 버튼
 	$("#idMailAuthBtn").on("click", function() {
 	
		if ($("#memName").val() == "") {
			alert('이름을 입력해 주세요.');
			$("#memName").focus();
			
		} else if ($("#memEmail").val() == "") {
			alert("이메일을 입력해 주세요.");
			$("#memEmail").focus();

		} else {
	 		$.ajax({
	 			type:"post",
	 			url:"/member/findIdEmailSend",
	 			data:{"memName":$('#memName').val(), 
	 				  "memEmail":$('#memEmail').val()},
	 			dataType:"text",
	 			success:function(result) {
	 				alert(result);
	 			},
	 			error:function() {
	 				alert("새로고침 후 다시 시도해주세요.");
	 			}
	 		}); // ajax 종료
		};
	});
	
	// 인증키 확인 버튼
 	$("#authKeyBtn").on("click", function() {
 	
		if ($("#memName").val() == "") {
			alert('이름을 입력해 주세요.');
			$("#memName").focus();
 	
		} else if ($("#memEmail").val() == "") {
			alert("이메일을 입력해 주세요.");
			$("#memEmail").focus();

		} else {
	 		$.ajax({
	 			type:"post",
	 			url:"/member/authKeyCheck2",
	 			data:{"memName":$('#memName').val(),
	 				  "memEmail":$('#memEmail').val(), 
	 				  "authKeyCheck":$('#authKeyCheck').val()},
	 			dataType:"text",
	 			success:function(result) {
	 				if (result == "wrong") {
				 		$("#checkedAuth").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("잘못된 인증키입니다. 인증 이메일에 쓰여진 인증키를 입력해 주세요.");
	 					$("#authKeyCheck").focus();
	 				} else if (result == "alreadyChecked") {
				 		$("#checkedAuth").val('y');
	 					//console.log($("#checkedAuth").val());
	 					alert("이미 인증된 이메일 입니다. 계속 진행해 주세요");
	 					$("#authKeyCheck").focus();
	 				} else if (result == "checkYourEmail") {
				 		$("#checkedAuth").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("인증 이메일 확인 후 인증키를 입력해 주세요.");
	 					$("#authKeyCheck").focus();
	 				} else if (result == "timeOut") {
				 		$("#checkedAuth").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("30초가 지나 만료된 인증키입니다. 인증 이메일 보내기부터 다시 진행해 주세요.");
	 				} else if (result == "sendPlease") {
				 		$("#checkedAuth").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("인증 이메일을 보낸 후 진행해 주세요.");
	 				} else if (result == "finalCheck") {
				 		$("#checkedAuth").val('y');
	 					//console.log($("#checkedAuth").val());
	 					alert("확인되었습니다. 다음으로 진행해 주세요.");
	 				}
	 			},
	 			error:function() {
	 				alert("새로고침 후 다시 시도해주세요.");
	 			}
	 		}); // ajax 종료
		};
	});
	
	// 인증 이메일 보내기 버튼
 	$("#pwdMailAuthBtn").on("click", function() {
 	
		if ($("#memName2").val() == "") {
			alert('이름을 입력해 주세요.');
			$("#memName2").focus();
			
		} else if ($("#memId2").val() == "") {
			alert("아이디를 입력해 주세요.");
			$("#memId2").focus();
			
		} else if ($("#memEmail2").val() == "") {
			alert("이메일을 입력해 주세요.");
			$("#memEmail2").focus();

		} else {
	 		$.ajax({
	 			type:"post",
	 			url:"/member/findPwdEmailSend",
	 			data:{"memId":$('#memId2').val(), 
	 				  "memEmail":$('#memEmail2').val()},
	 			dataType:"text",
	 			success:function(result) {
	 				alert(result);
	 			},
	 			error:function() {
	 				alert("새로고침 후 다시 시도해주세요.");
	 			}
	 		}); // ajax 종료
		};
	});
	
	// 인증키 확인 버튼
 	$("#authKeyBtn2").on("click", function() {
 	
		if ($("#memName2").val() == "") {
			alert('이름을 입력해 주세요.');
			$("#memName2").focus();
 	
		} else if ($("#memEmail2").val() == "") {
			alert("이메일을 입력해 주세요.");
			$("#memEmail2").focus();

		} else {
	 		$.ajax({
	 			type:"post",
	 			url:"/member/authKeyCheck3",
	 			data:{"memId":$('#memId2').val(),
	 				  "memEmail":$('#memEmail2').val(), 
	 				  "authKeyCheck":$('#authKeyCheck2').val()},
	 			dataType:"text",
	 			success:function(result) {
	 				if (result == "wrong") {
				 		$("#checkedAuth2").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("잘못된 인증키입니다. 인증 이메일에 쓰여진 인증키를 입력해 주세요.");
	 					$("#authKeyCheck2").focus();
	 				} else if (result == "alreadyChecked") {
				 		$("#checkedAuth2").val('y');
	 					//console.log($("#checkedAuth").val());
	 					alert("이미 인증된 이메일 입니다. 계속 진행해 주세요");
	 					$("#authKeyCheck2").focus();
	 				} else if (result == "checkYourEmail") {
				 		$("#checkedAuth2").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("인증 이메일 확인 후 인증키를 입력해 주세요.");
	 					$("#authKeyCheck2").focus();
	 				} else if (result == "timeOut") {
				 		$("#checkedAuth2").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("30초가 지나 만료된 인증키입니다. 인증 이메일 보내기부터 다시 진행해 주세요.");
	 				} else if (result == "sendPlease") {
				 		$("#checkedAuth2").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("인증 이메일을 보낸 후 진행해 주세요.");
	 				} else if (result == "finalCheck") {
				 		$("#checkedAuth2").val('y');
	 					//console.log($("#checkedAuth").val());
	 					alert("확인되었습니다. 다음으로 진행해 주세요.");
	 				}
	 			},
	 			error:function() {
	 				alert("새로고침 후 다시 시도해주세요.");
	 			}
	 		}); // ajax 종료
		};
	});
 });
 
 // 창 나가면 인증 DB 삭제
 window.addEventListener('beforeunload', function(event) {
 	console.log('회원가입 안하니까 인증 삭제합니다');
 	
 	$.ajax({
 		type:"post",
 		url:"/member/authDelete2",
	 	data:{"memName":$('#memName').val(), 
	 		  "memEmail":$('#memEmail').val()},
 		success:function() {
 		},
 		error:function() {
 			alert("새로고침 후 다시 시도해주세요.");
 		}
 	}); // ajax 종료
 });