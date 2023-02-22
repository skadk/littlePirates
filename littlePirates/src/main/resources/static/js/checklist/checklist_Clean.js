/**
 *  checklist_Clean.js
 */
	//	== $(document).ready(function(){});
/*
$(document).ready(function() {

  /////////// 체크리스트 이벤트 발생
  var checkedNo = 0;
  const cells = document.querySelectorAll(".father .child");
  for (let i = 0; i < cells.length; i++) {
    cells[i].addEventListener("click", event => {
      var index = i;
      checkedNo = index + 1;

      swal({
        title: "체크리스트를 완료 하셨나요?",
        icon: "warning",
        buttons: ["취소", "확인"],
        dangerMode: true,
      })
      .then((willComplete) => {
        if (willComplete) {
          $.ajax({
            type: "post",
            url: "/checklist/checked",
            data: { "checkedNo": checkedNo },
            success: function(result) {
              if (result == "success") {
                event.target.classList.add("checked");
                checkForList();
                swal("체크완료", {
                  icon: "success",
                })
                .then(() => {
                  location.reload(); // 페이지 새로 고침
                });
              } else {
                swal("이미 체크 되었거나 오늘 체크는 완료 하셨습니다.", {
                  icon: "warning",
                });
              }
            },
            error: function() {
              swal("로그인 하고 해주세요", {
                icon: "error",
              })
              .then(() => {
                location.href = "/member/login";
              });
            }
          }); // ajax 종료
        }
      });
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

});
*/


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

