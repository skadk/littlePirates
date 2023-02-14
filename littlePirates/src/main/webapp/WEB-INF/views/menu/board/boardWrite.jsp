<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/summernote/summernote-lite.css'/>">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/summernote/summernote-lite.js'/>"></script>
<script src="<c:url value='/js/summernote/lang/summernote-ko-KR.js'/>"></script>
</head>
<body>
	<div id="wrap">
		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<!-- parentsNav -->
		<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />
		<h4>글을 작성하는 공간입니다.</h4>
		<div id="boardWriteBox">
			<div id="write_area">
				<table>
					<form name="boardForm" method="post"
						action="<c:url value='/board/brdWrite'/>" id="boardForm">
						<tbody>
							<tr>
								<td>제목</td>
								<td><input type="text" name="brdTitle"></td>
							</tr>
							<tr>
								<td>내용</td>
								<td><textarea id="summernote" name="brdText"></textarea></td>
							</tr>
							<tr>
								<td><input type="submit"></td>
							</tr>
						</tbody>
					</form>
				</table>
				<!-- 				 <div class="col-md-10" style="margin-left:80px;">
				 	<textarea id="summernote" rows="5" name="explanation" style="width:100%; height:250px;"></textarea>
				 </div> -->
			</div>
		</div>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</div>
</body>
</html>