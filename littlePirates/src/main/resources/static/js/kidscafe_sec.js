/**
 * 
 */
 
$(document).ready(function(){
	$("#browsers").on("change", function() {
	
		$.ajax({
 			type:"post",
 			url:"/kidscafe_sec/search",
 			data:{"sido": $(this).val()},
 			success:function(result){
 				$("#searchresult").html(result);
 				$("#firstresult").hide();
				
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	

	});
});