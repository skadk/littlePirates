/**
 * 	checklist_Eat.js
 */

$(document).ready(function(){
  	$(".dropdown_trigger").click(function(){
    	$(".dropdown_content").toggle();
  	});			
		  var table = document.getElementById("dataTable");
		
		  // Set the number of rows per page
		  var rowsPerPage = 10;
		
		  // Get the total number of rows
		  var totalRows = table.rows.length;
		
		  // Calculate the total number of pages
		  var totalPages = Math.ceil(totalRows / rowsPerPage);
		
		  // Create a select element to hold the page numbers
		  var select = document.createElement("select");
		  select.classList.add("selectBtn");
		  // Create and append options to the select element for each page
		  for (var i = 0; i <= totalPages; i++) {
		  	if(i==0){
		  	var option = document.createElement("option");
		    option.text = "전체 보기";
		    select.appendChild(option);
		    }
		    else{		  
		    var option = document.createElement("option");
		    option.value = i;
		    option.text = i;
		    select.appendChild(option);
		    }
		  }
		
		  // Add an event listener to the select element to handle page changes
		  select.addEventListener("change", function() {
		    var pageNumber = this.value;
		    var startRow = (pageNumber - 1) * rowsPerPage;
		    var endRow = startRow + rowsPerPage;
 			// Loop through all the rows and hide the ones that should not be displayed on the current page
			 for (var i = 0; i < totalRows; i++) {
			    if (i < startRow || i >= endRow) {
			      table.rows[i].style.display = "none";
			    } else {
			      table.rows[i].style.display = "table-row";
			    }
			  }
			});
 				  	document.body.appendChild(select);
  	
});

 document.addEventListener("DOMContentLoaded", function() {
  var table = document.querySelector("table");
  table.classList.add("fade-in");
});

