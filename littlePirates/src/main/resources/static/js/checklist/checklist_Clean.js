/**
 *  checklist_Clean.js
 */



	//	== $(document).ready(function(){});
$(function () {

  // clickBingo() 함수 추가
  function clickBingo(num) {
    var textBox = document.getElementById("textBox" + num);
    var audio = document.getElementById("bingoAudio" + num);

    // TTSService 클래스의 객체 생성
    var ttsService = new TTSService();

    // TTS API 호출
    ttsService.playTTS(textBox.innerHTML);

    // HTML5 Audio 태그를 생성하여 음성 파일 재생
    // API 호출 결과로 반환된 음성 파일 URL을 지정
    audio.src = "https://naveropenapi.apigw.ntruss.com/voice/v1/tts?speaker=mijin&speed=0&text=" + encodeURIComponent(textBox.innerHTML);
    audio.play();
  }
	
	
	//랜덤이미지 9개 넣을 공간 생성
	const numberOfImages = 26;
	const images = [];
	for (let i = 1; i <= numberOfImages; i++) {
	    images.push(`100${i}.png`);
											  }
//////////// (1) 랜덤 이미지 아홉개 박스에 생성 함수
/*
	function CreateImage(){
   		const cleanList = document.getElementsByClassName("child");
	    let usedImages = [];
	    // 사용한 이미지 모음
	    for (let i = 0; i < cleanList.length; i++) {
	        let chosenImage;
	        
	        do {
	            chosenImage = images[Math.floor(Math.random() * images.length)];
	        } while (usedImages.includes(chosenImage));
	        
	        usedImages.push(chosenImage);
	        //사용한 이미지는 사용한 목록에 넣기.
	        const image = document.createElement("img");
	        image.src = `/image/${chosenImage}`;
        	image.setAttribute("id", `bingoBtnImg${i+1}`);	        
	        cleanList[i].appendChild(image);	
	        // 이미지 생성 끝	                
	    											}
	    		usedImages = [];
							}
*/
/////////// (1) 끝

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
							alert("체크완료");					
						} else {
							alert("이미 체크 되었거나 오늘 체크는 완료 하셨습니다.");												
						} 
					},
					error:function() {
						alert("로그인 하고 해주세요");
						location.href="/member/login";
					}
				}); // ajax 종료
			}
			    checkForList();
			    checkForBingo();
		  });
		}
			
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

	 function checkForList(){
		 for(var i=1; i<=9; i++){
		 if(document.getElementById("bingoBtnImg"+i).classList.contains("checked"))		  
		  	document.querySelector('#childCheckImg'+i).style.display ='block';
		  	}
	 }
	 
///////////// (3) 리스트 체크 함수 끝	  

});	
