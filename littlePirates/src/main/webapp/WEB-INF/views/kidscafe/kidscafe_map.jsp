<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
    	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
		<meta charset="UTF-8">
		<title>키즈카페</title>
		<!-- API 로드하기 -->
	    <link rel="stylesheet" type="text/css" href="<c:url value='/css/kidscafe.css'/>">
		<!-- head -->
		<c:import url="/WEB-INF/views/layout/head.jsp"/>
		<script src="<c:url value='/js/kidscafe.js' />"></script>
		<script src="<c:url value='/js/MarkerClustering.js' />"></script>
	    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=gqkrw3jvwk"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<section>
			
				<article>
					<div id="selectbox">
					<div id="clickbox">
						<ul>
							<li id="select_map">
							<a href="<c:url value='/kidscafe_map'/>">지도로 보기</a>
							</li>
							<li id="gather">
							<a href="<c:url value='/kidscafe_sec'/>">간편하게 보기</a>
							</li>
						</ul>
					</div>
				</div>	
				</article>
				
				<article>
					<!-- 지도 -->
					<div id="map" style="width:100%; height:850px;"></div>
				    
				   
				</article>

			</section>
			<!-- bottom -->
            <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
		</div>
	</body>
</html>





