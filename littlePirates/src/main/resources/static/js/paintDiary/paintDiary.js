/**
 * paintDiary.js
 */
 
 $(document).ready(function() {
 	$('#paintFileForm').on('submit', function() {
 		//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		// 폼 데이터 읽어 오기
 		var formData = new FormData($('#paintFileForm')[0]);
 		
 		// 업로드된 파일명 알아오기 : imageBox에 이미지 출력하기 위해
 		// C:\fakepath\cat.jpg 파일 경로 및 파일명
 		var fileName = $('#paintFile').val().split("\\").pop(); // 파일명만 추출 : cat.jpg
		alert($('#paintFile').val());
		alert(fileName);
		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/paintDiary/paintFileUpload",
 			enctype:"multipart/form-data",
 			processData:false,
 			contentType:false,
 			data:formData,
 			success:function(result) {
 				if(result == "success") {
 					$('#imageBox').html('<img src="/uploadImage/' + fileName + '" width="400" height="300">');
 					// /images : 매핑 이름
 					// C:\springWorkspace\upload 폴더에 접근하기 위해서는
 					// WebConfig.java에 upload 폴더로 설정되어 있어야 함 -> 추가
 				}
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
 	
	
    $('.thumb').hover(function(){
          $('.main_image img').attr('src',$(this).children('img').attr('src'));
    });
	
 });
 	/*
 	for (i = 1; i < 6; i++) {
 	
 	
	// (새기기) 버튼 클릭 시 태극기 이미지의 랜덤한 영역에 랜덤한 색으로 randombox클래스의 div로 sentence의 내용 추가
	//$('.btnWrite').on('click', function() {
		$('#paintingSpace').append("<div id='randomBox" + i + "'><img src=\"<c:url value='/images/" + i + ".jpg'/>\"></div>");
		
		// 객체의 css에 랜덤한 좌표값과 랜덤한 색 지정
		$('#randomBox' + i + '').each(function() {
			$(this).css({
				left:Math.random()*($('#paintingSpace').width()-$(this).width()),
				top:Math.random()*($('#paintingSpace').height()-$(this).height()),
				//color:"#"+Math.round(Math.random()*0xffffff).toString(16)
			});
		});
		//console.log("#"+Math.round(Math.random()*0xffffff).toString(16));
	//});
		
	}
	*/