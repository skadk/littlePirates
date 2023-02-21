/**
 * 
 */
var page_count = 10;
var start_page = 1;

$(document).ready(function(){
 	addpaging();
 	
});

 	function addpaging() {
 		var strpage = "";
 			
 		var current = $("#firstresult").find("#cur_page").val();
		var end = start_page + page_count; 	
	 	var total_count = Number($("#total_count").val());
	 	var finalPageNo = parseInt(total_count / page_count);
		
	    if (total_count % page_count > 0) {
	        finalPageNo++;
	    }
	
	    if (finalPageNo < cur_page) {
	        cur_page = finalPageNo;
	    }
	    
	    if(end > finalPageNo) {
	    	end = finalPageNo+1;
	    }		   
		
 		if(start_page > page_count) {
 			strpage += "<li class='page-item'><a href='javascript:prevpaging();' > ◀이전 </a></li>" 			
 		}
 		
 		for(var i = start_page; i<end; i++) {
	 		if(i == current) {
				strpage += "<li class='page-item'><a href='javascript:go("+ i +");'> <strong> <font color='red'>" + i + "</font> </strong> </a></li>"
			}
			else {
				strpage += "<li class='page-item'><a href='javascript:go("+ i +");'>" + i + "</a></li>"
			}
		}
		
 		if(end < total_count) {
			strpage += "<li class='page-item'><a href='javascript:nextpaging();' > ▶다음 </a></li>" 			
 		}
 		$(".pagination").html(strpage);
	}

function prevpaging() {
	start_page -= page_count;
	cur_page = start_page;
	
	$.ajax({
 			type:"post",
 			url:"/kindergarten_page",
 			data:{"pagenum": cur_page},
 			success:function(result){
 				$("#firstresult").html(result);
 				
 				
 			 	addpaging();
				
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	
}

function nextpaging() {
	start_page += page_count;
	cur_page = start_page;
	
	$.ajax({
 			type:"post",
 			url:"/kindergarten_page",
 			data:{"pagenum": cur_page},
 			success:function(result){
 				$("#firstresult").html(result);
 				
 			
 			 	addpaging();
				
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	
}
 	
function go(page) {
	
	$.ajax({
 			type:"post",
 			url:"/kindergarten_page",
 			data:{"pagenum": page},
 			success:function(result){
 				$("#firstresult").html(result);
 				
 				
 			 	addpaging();
				
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	
 		
}
