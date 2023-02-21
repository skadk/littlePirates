/**
 * 
 */
$(function() {
    $.ajax({
        url: "/checkList/checkList_Image",
        type: "post",
        success: function(data) {

	  let bingoCnt = 0;
//      var bingoCount = document.getElementById("bingoCount");
      
			if(data.chlNo1_Checked != undefined){
				$('#childCheckImg1').css('display','block');			
		}
			if(data.chlNo2_Checked != undefined){
				$('#childCheckImg2').css('display','block');			
		}
			if(data.chlNo3_Checked != undefined){
				$('#childCheckImg3').css('display','block');			
		}
			if(data.chlNo4_Checked != undefined){
				$('#childCheckImg4').css('display','block');			
		}
			if(data.chlNo5_Checked != undefined){
				$('#childCheckImg5').css('display','block');			
		}
			if(data.chlNo6_Checked != undefined){
				$('#childCheckImg6').css('display','block');			
		}
			if(data.chlNo7_Checked != undefined){
				$('#childCheckImg7').css('display','block');			
		}
			if(data.chlNo8_Checked != undefined){
				$('#childCheckImg8').css('display','block');			
		}
			if(data.chlNo9_Checked != undefined){
				$('#childCheckImg9').css('display','block');			
		}
			if(data.chlNo1_Checked != undefined && data.chlNo2_Checked != undefined && data.chlNo3_Checked != undefined){
			bingoCnt++;
			}
			if(data.chlNo4_Checked != undefined && data.chlNo5_Checked != undefined && data.chlNo6_Checked != undefined){
			bingoCnt++;
			}
			if(data.chlNo7_Checked != undefined && data.chlNo8_Checked != undefined && data.chlNo9_Checked != undefined){
			bingoCnt++;
			}
			if(data.chlNo1_Checked != undefined && data.chlNo4_Checked != undefined && data.chlNo7_Checked != undefined){
			bingoCnt++;
			}
			if(data.chlNo2_Checked != undefined && data.chlNo5_Checked != undefined && data.chlNo8_Checked != undefined){
			bingoCnt++;
			}
			if(data.chlNo3_Checked != undefined && data.chlNo6_Checked != undefined && data.chlNo9_Checked != undefined){
			bingoCnt++;
			}
			if(data.chlNo1_Checked != undefined && data.chlNo5_Checked != undefined && data.chlNo9_Checked != undefined){
			bingoCnt++;
			}
			if(data.chlNo3_Checked != undefined && data.chlNo5_Checked != undefined && data.chlNo7_Checked != undefined){
			bingoCnt++;
			}
			$('#bingoCount').empty();
			$('#bingoCount').append(bingoCnt+'&nbsp;&nbsp;/&nbsp;&nbsp;8');
        },
        error: function() {
            alert("error");
        }
    });
});
