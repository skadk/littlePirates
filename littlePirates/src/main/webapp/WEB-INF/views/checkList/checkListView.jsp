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
			<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<!-- head end-->
	</head>
	<body>
		<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
			<div class="container">
			  <div class="checklistHeader">
			  📔 우 리 들 의 체 크 리 스 트
			  </div>			
			  	<div class="checklist_Section">
					<img class="menu_image"src="<c:url value='/image/checklistViewFinal.png'/>">
					<div class="menu">									
					<%-- 생활 습관 체크리스트 --%>						
						<div class="modal_wrap">
						    <div class="modal_close">
						    	<a href="#" onclick="return false"></a>
						    </div>					    
							<%-- 모달 창 안 컨텐츠 박스 구현 iframe 사용 --%>	    
							<iframe src="/checkList/checkList_Clean" id="chat_iframe">구현할 모달창 박스</iframe>    					    
						</div>
						<div class="modalBtn">
				  		</div>	
			  		<%-- 생활 습관 체크리스트 끝 --%>		  				
					<%-- 활동 체크리스트 --%>				        
	     				<div class="black_bg">
						</div>
						<div class="modal_wrap3">
						    <div class="modal_close3">
						    	<a href="#" onclick="return false"></a>
						    </div>					    
						<%-- 모달 창 안 컨텐츠 박스 구현 iframe 사용 --%>	    
						<iframe src="/checkList/checkList_Manner" id="chat_iframe">구현할 모달창 박스</iframe>    					    
						</div>
					  <div class="modalBtn3">
					  </div>				  	
					<%-- 활동 체크리스트 --%>  				
					<%-- 체크리스트 달성률 보기 --%>						
						<div class="modal_wrap2">
						    <div class="modal_close2">
						    	<a href="#" onclick="return false"></a>
						    </div>					    
							<%-- 모달 창 안 컨텐츠 박스 구현 iframe 사용 --%>	    
							<iframe src="/checkList/checkList_Eat" id="chat_iframe">구현할 모달창 박스</iframe>    					    
						</div>
						<div class="modalBtn2">
				  		</div>	
			  		<%-- 체크리스트 달성률 보기 --%>	  		
	  			  </div>
				 <div class="textBox">깃발&#128681;,지도&#128220;,불가사리&#11088;를 눌러보세요</div>
			    </div>
			   </div>						
	
		    <!-- bottom -->
		    <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		    <!-- bottom end-->
		</div>
	</body>
</html>