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
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
</head>
<body>
	<div id="wrap">
		<!-- top -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<h4>글을 작성하는 공간입니다.</h4>
		<div id="mainBox">

			<div id="write_area">
				<form>
					<div>
						<textarea name="title" rows="1" cols="55" placeholder="제목"
							maxlength="100" required></textarea>
					</div>

					<div></div>
					<div>
						<textarea name="content" id="ucontent" placeholder="내용" 
						maxlength="500" required></textarea>
					</div>

					<input type="file" name="SelectFile" />

					<div class="bt_se">
						<button type="submit">글 작성</button>
					</div>
				</form>
			</div>
		</div>
		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />

	</div>
</body>
</html>