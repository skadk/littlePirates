/**
 * signUp.js
 */
 
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
 				document.getElementById("memAddress2").value = extraAddr + ' ';
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
 
 function signupCheck() {
 	var memId = document.getElementById("memId");
 	var memPwd = document.getElementById("memPwd");
	var memPwd2 = document.getElementById("memPwd2");
	var memName = document.getElementById("memName");
	var memHP = document.getElementById("memHP");
	var memEmail = document.getElementById("memEmail");
	var memZipcode = document.getElementById("memZipcode");
	
	if (memId.value == "") {
		alert("아이디를 입력하세요.")
		memId.focus();
		
		return false;
	};
	
	if ($("input[name='checkedId']").val()==''){
        alert('아이디중복 확인을 해주세요.');
        $("input[name='checkedId']").eq(0).focus();
        
        return false;
    }
    
	if (memPwd.value == "") {
		alert("비밀번호를 입력하세요.")
		memPwd.focus();
		return false;
	};

	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

	if (!pwdCheck.test(memPwd.value)) {
		alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
		memPwd.focus();
		return false;
	};

	if (memPwd2.value !== memPwd.value) {
		alert("비밀번호가 일치하지 않습니다.")
		memPwd2.focus();
		return false;
	};

	if (memName.value == "") {
		alert("이름을 입력하세요.")
		memName.focus();
		return false;
	};

	var num = /^[0-9]+/g;

	if (!num.test(memHP.value)) {
		alert("전화번호는 숫자만 입력하세요.")
		memHP.focus();
		return false;
	};

	if (memEmail.value == "") {
		alert("이메일을 입력하세요.")
		memEmail.focus();
		return false;
	};
	
	if (memZipcode.value == "") {
		alert("주소를 입력하세요.")
		memZipcode.focus();
		return false;
	};

	document.signUpForm.submit();
 };

