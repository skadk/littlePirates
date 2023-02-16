/**
 * 	checklist_Manner.js
 */

 $(document).ready(function(){
 	$('#fileUploadForm').on('submit', function(){
 	//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		// id와 pw값 변수에 저장
 		var formData = new FormData($('#fileUploadForm')[0]);
 		
 		//업로드 된 파일명 알아오기 : imageBox에 이미지 출력하기 위해
 		//C:\fakepath\cat.jpg 파일 경로 및 파일명
 		var fileName = $('#chooseFile').val().split("\\").pop();
 		// alert($('#uploadFile').val());
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"allFileUpload",
 			enctype:"mulitpart/form-data",
 			processData:false,
 			contentType:false,
 			data: formData,
 			dataType:'text',
 			success:function(result){
 				if(result == "success"){
 					$('#photoContent').html('<img src="/images/'+fileName+'" width="400" height="300">');
 				// /images : 매핑 이름 
 				// C:\springWorkspace\upload 폴더에 접근하기 위해서는
 				// WebConfig.java에 upload 폴더로 설정되어 있어야 함 -> 추가
 				}
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});
 
 
 

 
 /*
$(document).ready(function(){
	const numberOfImages = 10;
	const images = [];
	for (let i = 1; i <= numberOfImages; i++) {
	    images.push(`AC${i}.png`);
	}
	// 이미지 다섯개 배열에 추가

	function CreateImage(){
   		const mannerList = document.getElementsByClassName("mannerList2_image");
	    let usedImages = [];
	    // 사용한 이미지 모음
	    for (let i = 0; i < mannerList.length; i++) {
	        let chosenImage;
	        
	        do {
	            chosenImage = images[Math.floor(Math.random() * images.length)];
	        } while (usedImages.includes(chosenImage));
	        
	        usedImages.push(chosenImage);
	        const image = document.createElement("img");
	        image.src = `/image/${chosenImage}`;
	        ////////////////////////////////////////////////////////////
	        image.addEventListener("click", function(){			
				if(confirm("체크리스트 달성 하셨나요?") == true){
				    const marker = document.createElement("div"); 
				    const markerImg = document.createElement("img");
				    markerImg.src = "/image/Good1.JPG";
				    markerImg.style.width = "150px";
				    markerImg.style.height = "150px";
				    markerImg.style.borderRadius = "50%";			    
				    marker.appendChild(markerImg);
				    image.parentNode.appendChild(marker);
				    image.removeEventListener("click", arguments.callee);
				    //위 과정을 반복해서 삭제를 한번에
					}
	        else{
	        	alert("달성 후에 다시 눌러주세요.");
	        	}

	        });
	        mannerList[i].appendChild(image);
	    }
	    usedImages = [];
	}
//최초 생성 호출
//	CreateImage();
	
	function removeImages(){
	  const mannerList = document.getElementsByClassName("mannerList2_image");
	
	  for (let i = 0; i < mannerList.length; i++) {
	    while (mannerList[i].firstChild) {
	      mannerList[i].removeChild(mannerList[i].firstChild);
	    }
	  }
	}
	
	//재생성
	function reCreate(){
	if(confirm("재생성 하시겠습니까?") == true){
	alert("전체 재 생성 되었습니다.");
	removeImages();
	CreateImage();
	}
	
	else{
	alert("그대로 유지");
	}
	};
	
	document.querySelector('.createChecklist2').addEventListener('click',reCreate);
});
*/