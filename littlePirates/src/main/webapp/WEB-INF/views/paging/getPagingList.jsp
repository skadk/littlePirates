<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>예시</title>
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/paging/data.js'/>"></script>		
		<script src="<c:url value='/js/paging/paging.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- background & header -->
			<c:import url="/WEB-INF/views/layout/header.jsp"/>
			<!-- parentsNav -->
			<c:import url="/WEB-INF/views/layout/parentsNav.jsp"/>
			<h1>페이징 예제</h1>
			<table>
			    <colgroup>
			        <col width="10%">
			        <col width="35%">
			        <col width="40%">
			        <col width="15%">
			    </colgroup>
			    <thead>
			        <tr>
			            <th>번호</th>
			            <th>제목</th>
			            <th>내용</th>
			            <th>작성자</th>
			        </tr>
			    </thead>
			    <tbody id="dataList">
			    </tbody>
			</table>
			<br/>
			<br/>
			<!-- 페이징 -->
			<div>
			    <nav>
			        <ul class="pagination" id="pagination"></ul>
			    </nav>
			</div>
			<!-- bottom -->
            <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>