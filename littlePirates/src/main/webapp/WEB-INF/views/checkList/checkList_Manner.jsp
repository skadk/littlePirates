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
		<script src="<c:url value='/js/checklist/checklist_Manner.js'/>"></script> 	
		<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
	</head>
<body>
		
	<div class="container2">
		<div class="mannerHeader2">
		내가 만드는 체크리스트
<!-- 		<div class="createChecklist2">체크리스트 랜덤 재 생성</div> -->
		</div>
		<div class="checklist_Section2">
		<%-- 	<img src="<c:url value='/images/checkList_Manner_Back.png'/>" class="checklist_Section_back2"> --%>
				<div class="mannerList2">
						<div class="slideBtn">
							<div id="prevBtn">
							<img id="prevBtnImg"
							src="<c:url value='/images/prevBtn.png'/>"></div>
							<div id="nextBtn">
							<img id="nextBtnImg"
							src="<c:url value='/images/nextBtn.png'/>"></div>
						</div>
						<h1 class="Date">현재 페이지</h1>
					<div class="selfChecklistContent">
						<div class="selfChecklistHeader">
							<span>
								<ul>OOO님의 체크리스트
									<li>추가</li>
									<li>수정</li>
									<li>삭제</li>
								</ul>
							</span>
						</div>
						<div class="listBox">
								<div class="listBoxHeader">
									<span id="spanTag1">리스트 목록</span>
									<span id="spanTag2">확인</span>
								</div>
								<!-- 다섯칸의 리스트 목록 -->
								<c:forEach var="i" begin="1" end="5" step="1" >
									<div class="list">
										<div >
											<img id="listIcon"
											src="<c:url value='/images/pirates${i}.png'/>">	
										</div>
											<div class="listText">${i}</div>
											<!-- <input type="textbox" class="listText"  placeholder="리스트를 작성 해주세요."> -->
											<input type="checkbox" class="listCheckBox" >
									</div>
								</c:forEach>
						</div>
						<div class="photoBox">
							<div class="photolistName">체크리스트 명</div>
							<div class="photoDate">작성 일자</div>
							<div class="fileUpload">
								<form method="post" enctype="multipart/form-data" id="fileUploadForm" 
								class="fileUploadForm" action="<c:url value='/fileUpload'/>">
								    <div class="button">
								        <label for="chooseFile">
								            👉 파일 업로드 👈
								        </label>
								    </div>
								    <input type="file" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)">
									<input type="submit" value="저장">
								</form>
							</div>
							<div class="photoContent" id="photoContent">사진</div>
							<div class="photoContentText">......................</div>
						</div>
					</div>
					<div class="">3
					</div>
				</div>
		</div>
		

	</div>
	
</body>
</html>
