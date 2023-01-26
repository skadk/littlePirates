/**
 * memIdCheck.js
 */
 
 $(document).ready(function(){
 	$("#memIdCheck").on("click", function(){
 	
 		event.preventDefault();
 		
 		$("input[name=checkedId]").val('y');
 		
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
 					alert("사용 가능한 아이디입니다.");
 				}
 			},
 			error:function(){
 				alert("중복 체크 실패 다시 시도해주세요.");
 			},
 			complete:function(){
 				// alert("작업 완료");
 			}
 		}); // ajax 종료
 	}); // submit 종료
 }); // 최종 종료