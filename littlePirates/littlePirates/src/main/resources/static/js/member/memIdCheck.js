/**
 * memIdCheck.js
 */
 
 $(document).ready(function(){
 	$("#memIdCheck").on("click", function(){
 	
 		event.preventDefault();
 		
 		// 서버에 전송 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/member/memIdCheck",
 			data:{"memId":$('#memId').val()},
 			dataType:"text",
 			success:function(result){
 				if(result == "used"){
 					alert("이미 존재하는 아이디입니다.");
 				}else{
			 		$("#checkedId").val('y');
 					alert("사용 가능한 아이디입니다.");
 				}
 			},
 			error:function(){
 				alert("새로고침 후 다시 시도해주세요.");
 			}
 		}); // ajax 종료
 	}); // submit 종료
 }); // 최종 종료