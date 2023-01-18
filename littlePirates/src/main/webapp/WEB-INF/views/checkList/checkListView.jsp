<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>체크리스트</title>
			<link rel="stylesheet" type="text/css" href="<c:url value='/css/checklist.css'/>">
			<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
			<script src="<c:url value='/js/checklist.js'/>"></script>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<!-- head end-->
	</head>
	<body>
		<!-- background -->
		<c:import url="/WEB-INF/views/layout/background.jsp"/>
		<!-- top -->
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
		<!-- top end-->
				
		<div class="container">
		  <div class="checklistHeader">
		  원하는 탭을 클릭
		  </div>			
		  	<div class="checklist_Section">
				<img class="menu_image"src="<c:url value='/image/checkListBack.jpg'/>">
				<div class="menu">					
				<%-- 청결 모달창 --%>	
					
					<div class="modal_wrap">
					    <div class="modal_close">
					    	<a href="#" onclick="return false"></a>
					    </div>					    
						<%-- 모달 창 안 컨텐츠 박스 구현 iframe 사용 --%>	    
						<iframe src="/checkList/checkList_Clean" id="chat_iframe">구현할 모달창 박스</iframe>    					    
					</div>
					<div class="modalBtn">청결	
			  		</div>	
		  		<%-- 청결 모달창 끝 --%>	
		  		<%-- 식습관 모달창 --%>	
					
					<div class="modal_wrap2">
					    <div class="modal_close2">
					    	<a href="#" onclick="return false"></a>
					    </div>					    
						<%-- 모달 창 안 컨텐츠 박스 구현 iframe 사용 --%>	    
						<iframe src="/checkList/checkList_Eat" id="chat_iframe">구현할 모달창 박스</iframe>    					    
					</div>
					<div class="modalBtn2">식습관
			  		</div>	
		  		<%-- 청결 모달창 끝 --%>
		  		
<%-- 		            <div class="menu-item">
		            	<a href="<c:url value='/checkList/checkList_Eat'/>">식습관</a>
		            </div>			 --%>	     
				
				<%-- 매너 모달창 --%>				        
     				<div class="black_bg">
					</div>
					<div class="modal_wrap3">
					    <div class="modal_close3">
					    	<a href="#" onclick="return false"></a>
					    </div>					    
				<%-- 모달 창 안 컨텐츠 박스 구현 iframe 사용 --%>	    
					<iframe src="/checkList/checkList_Manner" id="chat_iframe">구현할 모달창 박스</iframe>    					    
					</div>
				  <div class="modalBtn3">예절	
				  </div>				  	
				<%-- 매너 모달창 끝 --%>    		
  			</div>
		</div>						

	   </div>
	    		<!-- bottom -->
	    <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	    <!-- bottom end-->
	</body>
</html>