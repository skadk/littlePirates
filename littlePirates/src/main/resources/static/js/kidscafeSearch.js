/**
 * 
 */
 
  $(document).ready(function(){
 	$('#submit').on('click', function(){ 
 		 
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/kidscafe_map/kidscafeSearch",
 			data: {"keyword":$("#keyword").val()},
 			datatype:"text",
 			success:function(result){
 					
 			$('#searchresult').html(result);
			$('#map').show();
			
		},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
 	
 	$('#table').on('click', 'img', function(){ 
 		alert("이미지");
 		$('#map').hide();
 		
 	/*	// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/kidscafe_map/kidscafeReview",
 			
 			success:function(result){
 					
 			$('#reviewresult').html(result);
			
		},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	*/
 	});
 	
});

 
