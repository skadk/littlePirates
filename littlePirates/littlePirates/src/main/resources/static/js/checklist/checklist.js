/**
 * 	checklist
 */
 
 
 $(document).ready(function () {

  
     function onClick() {
        document.querySelector('.modal_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
 
    }   
    function offClick() {
        document.querySelector('.modal_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
    
    function onClick2() {
        document.querySelector('.modal_wrap2').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
//		document.body.style.overflow='hidden';
    }   
    function offClick2() {
        document.querySelector('.modal_wrap2').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
        
    function onClick3() {
        document.querySelector('.modal_wrap3').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
 
    }   
    function offClick3() {
        document.querySelector('.modal_wrap3').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
    
    document.querySelector('.modalBtn').addEventListener('click', onClick);
    document.querySelector('.modal_close').addEventListener('click', offClick);
	document.querySelector('.modalBtn2').addEventListener('click', onClick2);
    document.querySelector('.modal_close2').addEventListener('click', offClick2);
	document.querySelector('.modalBtn3').addEventListener('click', onClick3);
	document.querySelector('.modal_close3').addEventListener('click', offClick3);

	document.querySelector(".modalBtn").addEventListener("mouseover", function(){
	document.querySelector(".textBox").style.display = 'block';
	document.querySelector(".textBox").innerHTML = "&nbsp;&nbsp;📝체크리스트<br>&emsp;&emsp;빙&nbsp;고";
	});
	document.querySelector(".modalBtn").addEventListener("mouseout", function(){
//	document.querySelector(".textBox").style.display = 'none';
	document.querySelector(".textBox").innerHTML ="";

	});
	document.querySelector(".modalBtn3").addEventListener("mouseover", function(){
	document.querySelector(".textBox").style.display = 'block';
	document.querySelector(".textBox").innerHTML = "&nbsp;&nbsp;📝내가 만드는<br>&nbsp;&emsp;체크 리스트";
	});
	document.querySelector(".modalBtn3").addEventListener("mouseout", function(){
//	document.querySelector(".textBox").style.display = 'none';
	document.querySelector(".textBox").innerHTML ="";
	});
	document.querySelector(".modalBtn2").addEventListener("mouseover", function(){
	document.querySelector(".textBox").style.display = 'block';
	document.querySelector(".textBox").innerHTML = "&nbsp;&nbsp;💯체크 리스트<br>&nbsp;&emsp;달성 현황";
	});
	document.querySelector(".modalBtn2").addEventListener("mouseout", function(){
//	document.querySelector(".textBox").style.display = 'none';
	document.querySelector(".textBox").innerHTML ="";
	});

});


		  $(document).ready(function () { 
		    $('.popup').show();
		  cookiedata = document.cookie;
		  if ( cookiedata.indexOf("popup_1=done") < 0 ){ //쿠키 변경 여부 불러오기
		  	document.querySelector("#popup_1").style.display = "block";
		  }
		  else {
		  	document.querySelector("#popup_1").style.display = "none";
		  }
		  PopupBgDisplay();
		 }); 
		 
		 //함수는 쿠키에 하루 종일 보지 않기 체크 여부를 저장하는 함수다.
		function PopupNoDisplay_1() {
		  setCookie("popup_1", "done", 1); //쿠키값 변경
		  PopupHide();
		}
		//함수는 단순히 팝업창을 안 보이게 해주는 함수,
		function PopupHide() { //팝업창 지우기
		  $('#popupWrap').hide();
		  PopupBgDisplay(); 
		}
		
		//함수는 배경을 숨기는 함수
		function PopupBgDisplay() {	//팝업창이 없어진 경우 배경(popupbg) 지우기
		  cookiedata1 = document.cookie;
		  if (cookiedata1.indexOf("popup_1=done") > 0)
		  {
		  	document.querySelector(".popup").style.display = "none";
		//  	$("#popupWrap").hide();
		  }

		}

 
 