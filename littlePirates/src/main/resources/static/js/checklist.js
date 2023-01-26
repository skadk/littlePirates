/**
 * 	checklist
 */
 window.onload = function() {
 
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
	document.querySelector(".textBox").innerHTML = "&nbsp;&nbsp;생활 습관 <br>&nbsp;&nbsp;체크 리스트📝";
	});
	document.querySelector(".modalBtn").addEventListener("mouseout", function(){
//	document.querySelector(".textBox").style.display = 'none';
	document.querySelector(".textBox").innerHTML ="깃발&#128681;지도&#128220;불가사리&#11088;를 눌러보세요";

	});
	document.querySelector(".modalBtn3").addEventListener("mouseover", function(){
	document.querySelector(".textBox").style.display = 'block';
	document.querySelector(".textBox").innerHTML = "&nbsp;&nbsp;활동🐘🚗 <br>&nbsp;&nbsp;체크 리스트🌱";
	});
	document.querySelector(".modalBtn3").addEventListener("mouseout", function(){
//	document.querySelector(".textBox").style.display = 'none';
	document.querySelector(".textBox").innerHTML ="깃발&#128681;지도&#128220;불가사리&#11088;를 눌러보세요";
	});
	document.querySelector(".modalBtn2").addEventListener("mouseover", function(){
	document.querySelector(".textBox").style.display = 'block';
	document.querySelector(".textBox").innerHTML = "&nbsp;&nbsp;체크 리스트 <br>&nbsp;&nbsp;달성률💯";
	});
	document.querySelector(".modalBtn2").addEventListener("mouseout", function(){
//	document.querySelector(".textBox").style.display = 'none';
	document.querySelector(".textBox").innerHTML ="깃발&#128681;지도&#128220;불가사리&#11088;를 눌러보세요";
	});
};