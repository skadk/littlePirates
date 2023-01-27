<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유치원 후기 작성</title>
<head>
<!-- css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/children.css'/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- head -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/children.js' />"></script>
<script src="<c:url value='/js/childrenScroll.js' />"></script>
</head>

<body>
	<div id="wrap">

		<!-- background & header -->
		<c:import url="/WEB-INF/views/layout/header.jsp" />
		<!-- parentsNav -->
		<c:import url="/WEB-INF/views/layout/parentsNav.jsp" />
		<section>
			<div class="container">
				<h2>게시판 글쓰기</h2>
				<tbody>
					<tr>
						<td><input type="text" class="form-control"
							placeholder="글 제목" name="contentTitle" maxlength="40"></td>
					</tr>
					<tr>
						<td><textarea type="text" class="form-control"
								placeholder="글 내용을 작성하세요" name="contentDetail" maxlength="1024"
								style="height: 400px;"></textarea></td>
					</tr>
				</tbody>

				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">

			</div>
		</section>

		<!-- bottom -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />

	</div>
</body>
</html>