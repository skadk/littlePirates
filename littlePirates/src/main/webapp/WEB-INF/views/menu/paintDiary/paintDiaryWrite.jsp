<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>그림 일기</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/paintDiary/paintDiaryWrite.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/paintDiary/paintDiary.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
			<div id="writeBox">
				<h1>그림 업로드</h1>
	
				<form id="paintFileForm">
					파일 : <input type="file" id="paintFile" name="paintFile">
					<input type="submit" value="upload">
				</form>
				
				<h1>그림 보여주기</h1>
				<div id="imageBox"></div>
				<c:forEach var="entry" items="${entries}">
					<div>
						<img src="${entry.image}" alt="업로드한 그림">
						<p>${entry.description}</p>
					</div>
				</c:forEach>
			    <div class="wrap">
			        <div>
			            <form name="form_sm_paper" action="#" onsubmit="syncSmPaper(this.text.value);return false;" style="text-align: center">
			                <input type="text" value="오늘 아이와의 하루는 어땠나요? 이곳에 써주세요!" maxlength="500" style="width:700px;font-size: 30px;" name="text" oninput="this.form.onsubmit(); return false" onblur="this.form.onsubmit(); return false">
			            </form>
			        </div>
			        <br>                <br>
			        <div class="sm-paper" data-line-length="20" id="sm_paper" style="margin:0 auto;">
			            <span>한</span>
			            <span>글</span>
			            <span>작</span>
			            <span>성</span>
			            <span> </span>
			            <span>.</span>
			            <span>?</span>
			            <span>!</span>
			        </div>
		        </div>
			</div>
			<!-- bottom -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>