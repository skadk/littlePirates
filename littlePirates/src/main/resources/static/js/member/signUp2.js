/**
 * signUp2.js
 */
 // 폼 확인
 $(document).ready(function() {
 	$("#nextBtn").on("click", function(){
 	
 		console.log($("#memId").val());
 		console.log($("#checkedSubmit").val());
 	
 		if ($("#memParentNo").val() == "") {
 			alert("부모 번호를 입력해 주세요.");
 			$("#memParentNo").focus();
 			
 			return false;
 		};
 		
 		var parentNo = $("#memParentNo").val();
 		var num = /\d{4}/;
 		
 		if (parentNo != "") {
 			if (num.test(parentNo) == false) {
 				alert("부모번호는 4자리 숫자를 입력해 주세요.");
 				$("#memParentNo").focus();
 				
 				return false;
 			};
 		};
 	
 		if ($("#childName").val() == "") {
 			alert("아이 이름 / 애칭 / 별명을 입력해 주세요.");
 			$("#childName").focus();
 			
 			return false;
 		};
 		
 		if ($("input[name=childGender]:radio:checked").length < 1) {
 			alert("성별 버튼을 눌러 주세요.");
 			
 			return false;
 		};
 		
 		if ($("#birthYear").val() == null) {
 			alert("버튼을 눌러 출생 연도를 선택해 주세요.");
 			
 			return false;
 		};
 		
 		if ($("#birthMonth").val() == null) {
 			alert("버튼을 눌러 출생 월을 선택해 주세요.");
 			
 			return false;
 		};
 		
 		if ($("#birthDay").val() == null) {
 			alert("버튼을 눌러 출생 일을 선택해 주세요.");
 			
 			return false;
 		};
 		
 		document.signUpForm2.submit();
 		$("#checkedSubmit").val('y');
 	});
 });
 
 // 생일 select 버튼 기능
 $(document).ready(function() {
 
 	// '출생 연도' 셀렉트 박스 option 목록 동적 생성
 	const birthYearEl = document.querySelector('#birthYear');
 	
 	// option 목록 생성 여부 확인
 	isYearOptionExisted = false;
 	birthYearEl.addEventListener('focus', function () {
 		
 		// year 목록 생성되지 않았을 때 (최초 클릭 시)
 		if(!isYearOptionExisted) {
 			isYearOptionExisted = true;
 			
 			for(var i = 2015; i <= 2030; i++) {
 			
 				// option element 생성
 				const YearOption = document.createElement('option');
 				
 				YearOption.setAttribute('value', i);
 				YearOption.innerText = i;
 				
 				// birthYearEl의 자식 요소로 추가
 				this.appendChild(YearOption);
 			}
 		}
 	});
 	
 	// '월' 셀렉트 박스 option 목록 동적 생성
 	const birthMonthEl = document.querySelector('#birthMonth');
 	
 	// option 목록 생성 여부 확인
 	isMonthOptionExisted = false;
 	birthMonthEl.addEventListener('focus', function () {
 		
 		// month 목록 생성되지 않았을 때 (최초 클릭 시)
 		if(!isMonthOptionExisted) {
 			isMonthOptionExisted = true;
 			
 			for(var i = 1; i <= 12; i++) {
 			
 				// option element 생성
 				const MonthOption = document.createElement('option');
 				
 				MonthOption.setAttribute('value', i);
 				MonthOption.innerText = i;
 				
 				// birthMonthEl의 자식 요소로 추가
 				this.appendChild(MonthOption);
 			}
 		}
 	});
 	
 	// '일' 셀렉트 박스 option 목록 동적 생성
 	const birthDayEl = document.querySelector('#birthDay');
 	
 	// option 목록 생성 여부 확인
 	isDayOptionExisted = false;
 	birthDayEl.addEventListener('focus', function () {
 	
 		// day 목록 생성되지 않았을 때 (최초 클릭 시)
 		if(!isDayOptionExisted) {
 			isDayOptionExisted = true;
 			
 			var leapYear = $("#birthYear").val();
 			var month = $("#birthMonth").val();
 			var limitDay = 31;
 			
 			if (month == 4 || month == 6 || month == 9 || month == 11) {
 				limitDay = 30;
 			} else if (month == 2) {
 				limitDay = 28;
 				
 				if (leapYear%4 == 0) {
 					if (leapYear%100 == 0 && leapYear%400 != 0) {
 					} else {
 						limitDay = 29;
 					}
 				}
 			}
 			
 			for(var i = 1; i <= limitDay; i++) {
 				// option element 생성
 				const DayOption = document.createElement('option');
 				
 				DayOption.setAttribute('value', i);
 				DayOption.innerText = i;
 				
 				// birthDayEl의 자식 요소로 추가
 				this.appendChild(DayOption);
 			}
 		}
 	});
 	
 	birthYearEl.addEventListener('change', (event) => {
		$('#birthDay').children('option:not(:first)').remove();
		isDayOptionExisted = false;
 	});
 	
 	birthMonthEl.addEventListener('change', (event) => {
 		$('#birthDay').children('option:not(:first)').remove();
		isDayOptionExisted = false;
 	});
 	
 	var year = document.getElementById('birthYear');
 	
 	$('#birthYear').focus(function() {
 		if ($('#birthYear').val() != null) {
 			year.style["border-color"] = "#627db2";
 			year.style["background"] = "url('/images/selectFocus.png') no-repeat";
 		}
 	}).change(function() {
 		if ($('#birthYear').val() != null) {
 			$('#birthYear').css({'border-color': '#627db2', 
 								 'background': 'url("/images/selectNotFocus2.png") no-repeat'
 			});
 			$('#birthYear').blur();
 		}
 	}).blur(function() {
 		if ($('#birthYear').val() != null) {
 			year.style["background"] = "url('/images/selectNotFocus2.png') no-repeat";
 		}
 	});
 	
 	var month = document.getElementById('birthMonth');
 	
 	$('#birthMonth').focus(function() {
 		if ($('#birthMonth').val() != null) {
 			month.style["border-color"] = "#627db2";
 			month.style["background"] = "url('/images/selectFocus.png') no-repeat";
 		}
 	}).change(function() {
 		if ($('#birthMonth').val() != null) {
 			$('#birthMonth').css({'border-color': '#627db2', 
 								  'background': 'url("/images/selectNotFocus2.png") no-repeat'
 			});
 			$('#birthMonth').blur();
 		}
 	}).blur(function() {
 		if ($('#birthMonth').val() != null) {
 			month.style["background"] = "url('/images/selectNotFocus2.png') no-repeat";
 		}
 	});
 	
 	var day = document.getElementById('birthDay');
 	
 	$('#birthDay').on('focus', function() {
 		if ($('#birthDay').val() != null) {
 			day.style["border-color"] = "#627db2";
 			day.style["background"] = "url('/images/selectFocus.png') no-repeat";
 		}
 	}).change(function() {
 		if ($('#birthDay').val() != null) {
 			$('#birthDay').css({'border-color': '#627db2', 
 								'background': 'url("/images/selectNotFocus2.png") no-repeat'
 			});
 			$('#birthDay').blur();
 		}
 	}).blur(function() {
 		if ($('#birthDay').val() != null) {
 			day.style["background"] = "url('/images/selectNotFocus2.png') no-repeat";
 		}
 	});
 });
 
 // 회원가입 창 나가면 인증 DB 삭제
 window.addEventListener('beforeunload', function(event) {
 	console.log($("#checkedSubmit").val());
 	if ($("#checkedSubmit").val() == "") {
 	console.log('거 회원가입 안하니까 DB 삭제합니다 ㅡㅡ');
 	
 		$.ajax({
 			type:"post",
 			url:"/member/memberDelete",
 			success:function() {
 			},
 			error:function() {
 				alert("새로고침 후 다시 시도해주세요.");
 			}
 		}); // ajax 종료
 	}
 });