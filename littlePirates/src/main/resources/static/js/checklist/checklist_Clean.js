/**
 *  checklist_Clean.js
 */
	//	== $(document).ready(function(){});

$(document).ready(function() {

/////////// 체크리스트 이벤트 발생
	var checkedNo = 0;	
	const cells = document.querySelectorAll(".father .child");	
		for (let i = 0; i < cells.length; i++) {
		  cells[i].addEventListener("click", event => {
		  	var index = i;
		  	
		  	checkedNo = index + 1;
		  	
		    if(confirm("체크리스트를 완료 하셨나요?") == true){			    	
				$.ajax({
					type:"post",
					url:"/checklist/checked",
					data:{"checkedNo":checkedNo},
					success:function(result) {
						if (result== "success") {
							event.target.classList.add("checked");										
							checkForList();			
							alert("체크완료");		
							location.reload(); // 페이지 새로 고침
						} else {
							alert("이미 체크 되었거나 오늘 체크는 완료 하셨습니다.");												
						} 
					},
					error:function() {
						alert("로그인 하고 해주세요");
						location.href="/member/login";
					}
				}); // ajax 종료

//			    checkForBingo();
			}
		  });
		}
			

function checkForList() {
  for (var i = 0; i < 9; i++) {
    var bingoBtnImg = document.getElementById("bingoBtnImg" + i);
    if (bingoBtnImg.classList.contains("checked")) {
      var childCheckImg = document.getElementById("childCheckImg" + (i + 1));
      childCheckImg.style.display = "block";
    }
  }
}
	 
///////////// (3) 리스트 체크 함수 끝	  

});	

/*
//////////// (2) 빙고 체크 함수		
	function checkForBingo() {	
	  let x=0;
	  let y=0;
	  let z=0;
	  let bingoCnt = 0;
	  // 가로빙고	  
	  for (let i = 1; i <= 7; i += 3) {
	    if (
	      document.getElementById("bingoBtnImg" + i).classList.contains("checked") &&
	      document.getElementById("bingoBtnImg" + (i + 1)).classList.contains("checked") &&
	      document.getElementById("bingoBtnImg" + (i + 2)).classList.contains("checked")
	    ) {
		  x++;
	    }	    
	  }
	  
	  // 세로 빙고
	  for (let i = 1; i <= 3; i++) {
	    if (
	      document.getElementById("bingoBtnImg" + i).classList.contains("checked") &&
	      document.getElementById("bingoBtnImg" + (i + 3)).classList.contains("checked") &&
	      document.getElementById("bingoBtnImg" + (i + 6)).classList.contains("checked")
	    ) {
	      y++;
	    }
	  }
	
	  // 대각선 빙고
	  if (
	    document.getElementById("bingoBtnImg1").classList.contains("checked") &&
	    document.getElementById("bingoBtnImg5").classList.contains("checked") &&
	    document.getElementById("bingoBtnImg9").classList.contains("checked")
	  ) {
	    z++;
	  }	
	  if (
	    document.getElementById("bingoBtnImg3").classList.contains("checked") &&
	    document.getElementById("bingoBtnImg5").classList.contains("checked") &&
	    document.getElementById("bingoBtnImg7").classList.contains("checked")
	  ) {
	    z++;
	}
	  bingoCnt=x+y+z;
	  alert("빙고 완료 수 : "+bingoCnt);
	  
	  if(bingoCnt==0){
	    document.querySelector('#bingoComplete1').style.display ='none';
        document.querySelector('#bingoComplete2').style.display ='none';
        document.querySelector('#bingoComplete3').style.display ='none';
	  }
	  if(bingoCnt==1){
	    document.querySelector('#bingoComplete1').style.display ='block';
        document.querySelector('#bingoComplete2').style.display ='none';
        document.querySelector('#bingoComplete3').style.display ='none';
	  }
	  if(bingoCnt==2){
	    document.querySelector('#bingoComplete1').style.display ='block';
        document.querySelector('#bingoComplete2').style.display ='block';
        document.querySelector('#bingoComplete3').style.display ='none';
	  }
	  if(bingoCnt>=3){
	    document.querySelector('#bingoComplete1').style.display ='block';
        document.querySelector('#bingoComplete2').style.display ='block';
        document.querySelector('#bingoComplete3').style.display ='block';
	  }
	 }
//////////// (2) 빙고 체크 함수	끝
*/
