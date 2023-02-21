/**
 * signUp1.js
 */
 
 // 폼 확인
 $(document).ready(function() {
 	$("#nextBtn").on("click", function(){
 	
 		if ($("#memName").val() == "") {
 			alert("이름을 입력해 주세요.");
 			$("#memName").focus();
 			
 			return false;
 		};
 		
 		if ($("#memId").val() == "") {
 			alert("아이디를 입력해 주세요.");
 			$("#memId").focus();
 			
 			return false;
 		};
 		
 		if ($("#checkedId").val() == "") {
 			alert('중복된 아이디인지 확인해 주세요.');
 			$("#memId").focus();
 			
 			return false;
 		};
 		
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
 		
 		var mobile = $("#memMobile").val();
 		var num = /\d{11}/;
 		
 		if (mobile != "") {
 			if (num.test(mobile) == false) {
 				alert("전화번호를 형식에 맞게 입력해 주세요.");
 				$("#memMobile").focus();
 				
 				return false;
 			};
 		};
 		
 		if ($("#memEmail").val() == "") {
 			alert("이메일을 입력해 주세요.");
 			$("#memEmail").focus();
 			
 			return false;
 		};
 		
 		var email = $("#memEmail").val();
 		var emailCheck = /[\w\.\-]+@[\w\.\-]+/;
 		
 		if (emailCheck.test(email) == false) {
 			alert("이메일 주소를 형식에 맞게 입력해 주세요.");
 			$("#memEmail").focus();
 			
 			return false;
 		};
 		
 		if ($("#authKeyCheck").val() == "") {
 			alert("인증 이메일 확인 후 인증키를 입력해 주세요.");
 			$("#authKeyCheck").focus();
 			
 			return false;
 		};
 		
 		if ($("#memZipcode").val() == "") {
 			alert("주소를 입력해 주세요.");
 			$("#memZipcode").focus();
 			
 			return false;
 		};
 		
 		if ($("#checkedAuth").val() == "") {
 			alert("이메일 인증을 하지 않았습니다.");
 			
 			return false;	
 		};
 		document.signUpForm1.submit();
 	});
 });
 
 // 각종 버튼 기능
 $(document).ready(function() {
 	
 	// 아이디 중복 확인 버튼
 	$("#memIdCheck").on("click", function(){
 	
		if ($("#memId").val() == "") {
			alert("아이디를 입력해 주세요.");
			$("#memId").focus();
			
 		// 서버에 전송 결과 받아서 처리
 		} else {
	 		$.ajax({
	 			type:"post",
	 			url:"/member/memIdCheck",
	 			data:{"memId":$('#memId').val(),
	 				  "checkedId":$('#checkedId').val()},
	 			dataType:"text",
	 			success:function(result){
	 				if (result == "used") {
	 					alert("이미 존재하는 아이디입니다.");
	 				} else {
				 		$("#checkedId").val('y');
	 					alert("사용 가능한 아이디입니다.");
	 				}
	 			},
	 			error:function(){
	 				alert("새로고침 후 다시 시도해주세요.");
	 			}
	 		}); // ajax 종료
 		};
 	}); // submit 종료
 
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
	
	// 인증 이메일 보내기 버튼
 	$("#mailAuthBtn").on("click", function() {
 	
		if ($("#memEmail").val() == "") {
			alert("이메일을 입력해 주세요.");
			$("#memEmail").focus();
			
		} else if ($("#checkedId").val() == "") {
			alert('이메일 인증을 위해 중복된 아이디인지 확인해 주세요.');
			$("#memId").focus();

		} else {
	 		$.ajax({
	 			type:"post",
	 			url:"/member/authEmailSend",
	 			data:{"memId":$('#memId').val(), 
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
 	
		if ($("#memEmail").val() == "") {
			alert("이메일을 입력해 주세요.");
			$("#memEmail").focus();
			
		} else if ($("#checkedId").val() == "") {
			alert('이메일 인증을 위해 중복된 아이디인지 확인해 주세요.');
			$("#memId").focus();

		} else {
	 		$.ajax({
	 			type:"post",
	 			url:"/member/authKeyCheck",
	 			data:{"memId":$('#memId').val(), 
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
	 					alert("이미 인증된 이메일 입니다. 회원가입을 진행해 주세요");
	 					$("#authKeyCheck").focus();
	 				} else if (result == "checkYourEmail") {
				 		$("#checkedAuth").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("인증 이메일 확인 후 인증키를 입력해 주세요.");
	 					$("#authKeyCheck").focus();
	 				} else if (result == "timeOut") {
				 		$("#checkedAuth").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("3분이 지나 만료된 인증키입니다. 인증 이메일 보내기부터 다시 진행해 주세요.");
	 				} else if (result == "sendPlease") {
				 		$("#checkedAuth").val('');
	 					//console.log($("#checkedAuth").val());
	 					alert("인증 이메일을 보낸 후 진행해 주세요.");
	 				} else if (result == "finalCheck") {
				 		$("#checkedAuth").val('y');
	 					//console.log($("#checkedAuth").val());
	 					alert("확인되었습니다. 회원가입을 진행해 주세요.");
	 				}
	 			},
	 			error:function() {
	 				alert("새로고침 후 다시 시도해주세요.");
	 			}
	 		}); // ajax 종료
		};
	});
 });
 
 // 주소 검색 버튼
 function daumPostcode() {
 	new daum.Postcode({
 		oncomplete: function(data) {
 			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
 			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
 			var addr = ''; // 주소 변수
 			var extraAddr = ''; // 참고항목 변수
 			
 			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
 			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
 				addr = data.roadAddress;
 			} else { // 사용자가 지번 주소를 선택했을 경우(J)
 				addr = data.jibunAddress;
 			}
 				
 			// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
 			if(data.userSelectedType === 'R'){
 				/*
 				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
 				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
 				if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
 					extraAddr += data.bname;
 				}
 				*/
 				// 건물명이 있고, 공동주택일 경우 추가한다.
 				if(data.buildingName !== '' && data.apartment === 'Y'){
 					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
 				}
 				/*
 				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
 				if(extraAddr !== ''){
 					extraAddr = ' (' + extraAddr + ')';
 				}
 				*/
 				// 조합된 참고항목을 해당 필드에 넣는다.
 				document.getElementById("memAddress2").value = extraAddr;
 			} else {
 				document.getElementById("memAddress2").value = '';
 			}
 			
 			// 우편번호와 주소 정보를 해당 필드에 넣는다.
 			document.getElementById('memZipcode').value = data.zonecode;
 			document.getElementById("memAddress1").value = addr;
 			// 커서를 상세주소 필드로 이동한다.
 			document.getElementById("memAddress2").focus();
 		}
 	}).open();
 }
 
 // 창 나가면 인증 DB 삭제
 window.addEventListener('beforeunload', function(event) {
 	console.log('회원가입 안하니까 인증 삭제합니다');
 	
 	$.ajax({
 		type:"post",
 		url:"/member/authDelete",
	 	data:{"memId":$('#memId').val()},
 		success:function() {
 		},
 		error:function() {
 			alert("새로고침 후 다시 시도해주세요.");
 		}
 	}); // ajax 종료
 });