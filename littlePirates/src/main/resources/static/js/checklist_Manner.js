/**
 * 	checklist_Manner.js
 */
$(function () {
	function listCreate(){
	if(confirm("생성 하시겠습니까?") == true){
	alert("이 때 랜덤으로 체크리스트 빈칸에 삽입");
	}
	else{
	alert("그대로 유지");
	}
	};
	document.querySelector('.createChecklist').addEventListener('click',listCreate);
});

window.onload = function() {
 
    function onClick() {
        document.querySelector('.modal_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
    }   
    function offClick() {
        document.querySelector('.modal_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
 	for(var i=1; i<=5; i++){
    document.getElementById('modal_btn'+i).addEventListener('click', onClick);
    document.querySelector('.modal_close').addEventListener('click', offClick);
 	}
};

