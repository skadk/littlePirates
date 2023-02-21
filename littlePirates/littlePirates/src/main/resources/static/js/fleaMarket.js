$(document).ready(function(){

/*	$('#writeForm').on('submit', function(){
	event.preventDefault();
	
	if(document.writeForm.flCategory.value==""){
		alert("")
	}
	
	
	});
*/



     $('#flImageName').on('change', function(){
 		setImagePreview(this, '#fleaMarketImgUpload');
    });
    
    function setImagePreview(file, preview) {
	   	if (file.files && file.files[0]) {
	   		var reader = new FileReader();
	   		reader.onload = function (e) {
		    	$(preview).html("<img src='" + e.target.result + "' width = '400' height = '400'>");
		  	}
	   	}
	   	reader.readAsDataURL(file.files[0]);
	  }
	  
});
   
		    
		    
	  	