/**
 *  kidscafe_sec.js
 */
 
 $(document).ready(function() {
 
 var map = new naver.maps.Map("map", {
  center: new naver.maps.LatLng(35.8940061, 130)
});

});

$(document).ready(function(){
 	$('#search').on('submit', function(){ 	
 		
 		event.preventDefault(); 		
 	
 		//폼에 입력한 값들을 쿼리 스트링 방식의 데이터로 변환 : serialize() 사용
 		var formData = $(this).serialize();
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/kidscafe_map/kidscafeSearch1",
 			data: {"keyword":$("#keyword").val()},
 			datatype:"text",
 			success:function(result){
 			
 					
 			$('#searchresult').empty();
		
			if(result!=''){
				$('#searchresult').append('<table border="1" class="table">');
				for(var i=0; i<result.length; i++){
					$('#searchresult').append(		 			
					'\<tr><td>'+result[i].kcName+'<br>'+
					 result[i].kcAddress+'<br>'+
					'\운영시간<br>전화번호<br>평점</td></tr>');
				}
			   $('#searchresult').append('</table>');									
		   }else{
		   alert("잘못된 입력입니다. 검색어를 다시 입력 해주세요.");
			}
		},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});
