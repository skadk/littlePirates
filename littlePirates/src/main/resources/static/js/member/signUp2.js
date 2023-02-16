/**
 * signUp2.js
 */
 
 $(document).ready(function() {
 
 	// '출생 연도' 셀렉트 박스 option 목록 동적 생성
 	const birthYearEl = document.querySelector('#birthYear');
 	
 	// option 목록 생성 여부 확인
 	isYearOptionExisted = false;
 	birthYearEl.addEventListener('focus', function () {
 		
 		// year 목록 생성되지 않았을 때 (최초 클릭 시)
 		if(!isYearOptionExisted) {
 			isYearOptionExisted = true;
 			
 			for(var i = 2030; i >= 2015; i--) {
 			
 				// option element 생성
 				const YearOption = document.createElement('option');
 				
 				YearOption.setAttribute('value', i)
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
 				
 				MonthOption.setAttribute('value', i)
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
/*		console.log($("#birthYear").val());
		console.log(leapYear);
				console.log(leapYear%4);
					console.log(limitDay);
					console.log(limitDay);
		console.log(month);*/
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
			
			DayOption.setAttribute('value', i)
			DayOption.innerText = i;
			
			// birthDayEl의 자식 요소로 추가
			this.appendChild(DayOption);
		}
		}
 	});
 	
 	console.log($("#birthYear").val());
 	console.log($("#birthDay option").val());
 	
 	birthYearEl.addEventListener('change', (event) => {
		$('#birthDay').children('option:not(:first)').remove();
		isDayOptionExisted = false;
 	});
 	
 	birthMonthEl.addEventListener('change', (event) => {
 		$('#birthDay').children('option:not(:first)').remove();
		isDayOptionExisted = false;
 	});
 });
 	
 	/*
	 	console.log($("#birthDay option").val());
 		if ($("#birthDay option[value='0']:selected")) {
 		} 
	
	 const selectedMonthEl = document.querySelector('#print-month');
 
	 birthMonthEl.addEventListener('change', (event) => {
 		selectedMonthEl.textContent = `Month of birth : ${event.target.value}`;
	 });
	
	 const selectedDayEl = document.querySelector('#print-day');
 
	 birthDayEl.addEventListener('change', (event) => {
 		selectedDayEl.textContent = `Day of birth : ${event.target.value}`;
	 });
	 */
 
 // Month, Day도 동일한 방식으로 구현
 
 /*
 $(document).ready(function() {
 	$("#nextBtn").on("click", function(){
 	
 		if ($("#memName").val() == "") {
 			alert("이름을 입력해 주세요.");
 			$("#memName").focus();
 			
 			return false;
 		};

 	});
 });
 */
 
 // 회원가입 창 나가면 인증 DB 삭제
 window.addEventListener('beforeunload', function(event) {
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
 });