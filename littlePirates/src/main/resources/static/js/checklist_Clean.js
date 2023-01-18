/**
 *  checklist_Clean.js
 */

$(function () {
	//	== $(document).ready(function(){});
	
	//랜덤이미지 9칸에 생성
	const numberOfImages = 9;
	const images = [];
	for (let i = 1; i <= numberOfImages; i++) {
	    images.push(`C${i}.png`);
	}
	// 이미지 아홉개
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

	
	//체크리스트 항목 완료
	const cells = document.querySelectorAll(".father .child");	
	cells.forEach(cell => {
	  cell.addEventListener("click", event => {
	    if(confirm("체크리스트를 완료 하셨나요?") == true){			    
		event.target.classList.add("checked");
		alert("체크완료");
													}				    
	    checkForBingo();
	  						});
	});
		
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
	      alert("가로빙고!");
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
	      alert("세로 빙고!");
	      y++;

	    }
	  }
	
	  // 대각선 빙고

	  if (
	    document.getElementById("bingoBtnImg1").classList.contains("checked") &&
	    document.getElementById("bingoBtnImg5").classList.contains("checked") &&
	    document.getElementById("bingoBtnImg9").classList.contains("checked")
	  ) {
	    alert("대각선 빙고1!");
	    z++;

	  }
	
	  if (
	    document.getElementById("bingoBtnImg3").classList.contains("checked") &&
	    document.getElementById("bingoBtnImg5").classList.contains("checked") &&
	    document.getElementById("bingoBtnImg7").classList.contains("checked")
	  ) {
	    alert("대각선 빙고2!");
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
	
	//최초 생성 호출
	CreateImage();
});	
