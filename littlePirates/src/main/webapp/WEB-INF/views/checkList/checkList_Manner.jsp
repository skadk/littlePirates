<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>예절 체크리스트</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/checklist_Manner.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/checklist_Manner.js'/>"></script>	

<body>

		
	<div class="container2">
		<div class="mannerHeader2">
		<h2>예절 체크리스트</h2>
		<div class="createChecklist2">체크리스트 랜덤 재 생성</div>
		</div>
		<div class="checklist_Section2">
			<img src="<c:url value='/image/checkList_Mannermap.png'/>" class="checklist_Section_back2">
				<div class="mannerList2">
					<c:forEach var="i" begin="1" end="5" step="1">
					   	<div class="black_bg2">
						</div>
						<div class="modal_wrap2">
						    <div class="modal_close2">
						    <a href="#"></a>
						    </div>
					    </div>					
					<div class="mannerList2_image" id="modal_btn2${i}">					
					</div>
					</c:forEach>
				</div>
		</div>
		

	</div>
	
</body>
</html>