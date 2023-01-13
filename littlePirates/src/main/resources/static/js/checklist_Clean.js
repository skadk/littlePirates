/**
 *  checklist_Clean.js
 */
 /*
window.onload = function(){


	for(var i=1; i<=9; i++){
		document.getElementById('bingoBtn'+i).addEventListener("click",function(e){
		alert('bingoBtn'+i);
		e.preventDefault();
		});
	}
};
*/
$(function () {
//	== $(document).ready(function(){});
	var num = 1;
	$("#bingoBtnImg1").click(function() {
		if(num == 1){
		$(this).attr("src","/image/M1002.JPG");
		num=0;
		}
		else{
		$(this).attr("src","/image/M1001.JPG");
		num=1;
		}
	});
});	
