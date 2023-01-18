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
		  <div class="checklistHeader">원하는 탭을 클릭</div>			
		  	<div class="checklist_Section">
				<img src="<c:url value='/image/checkListBack.jpg'/>">
				<div class="menu">		
			
				          <div class="menu-item">
				            <a href="<c:url value='/checkList/checkList_Manner'/>">예절</a>
				          </div>
				          <div class="menu-item">
				            <a href="<c:url value='/checkList/checkList_Clean'/>">청결</a>
				          </div>
				          <div class="menu-item">
				            <a href="<c:url value='/checkList/checkList_Eat'/>">식습관</a>
				          </div>				     
				        <%--   
				          <div class="menu-item">
				            <a href="<c:url value='/checkList/checkList_Order'/>">질서</a>
				          </div> --%>
				  <%-- 모달창 --%>				        
     				<div class="black_bg">
					</div>
					<div class="modal_wrap">
					    <div class="modal_close">
					    	<a href="#"></a>
					    </div>					    
				<%-- 모달 창 안 컨텐츠 박스 구현 iframe 사용 --%>	    
					<iframe src="/checkList/checkList_Manner" id="chat_iframe">구현할 모달창 박스</iframe>    					    
					</div>
				  <div class="modalBtn">모달창	
				  </div>				  	
				<%-- 모달창 끝 --%>    		
  				</div>
			</div>						
		<!-- bottom -->
	    <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
	    <!-- bottom end-->
	    </div>
	</body>
</html>