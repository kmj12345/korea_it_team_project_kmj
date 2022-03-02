<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>트립닷컴 | 즐겨찾기</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="plugins/fontawesome-free-5.15.4-web/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/add.css">
<link rel="stylesheet" href="dist/css/styleAdd.css">
<link rel="stylesheet" href="dist/css/bg.css">
<link rel="stylesheet" href="dist/css/adminlte.css">
</head>
<body class="hold-transition sidebar-mini">
<script>
	window.addEventListener('DOMContentLoaded', function()
		{
			document.getElementById("myFavoriteSide").className += ' active'
		});

</script>
<c:set var="bookmarkList" value="${requestScope.bookmarkList }"/>
		<!-- Navbar -->
			<%@ include file="userTool/userNav.jsp" %>
		<!-- /Navbar -->
		
		<!-- Main Sidebar Container -->
			<%@ include file="userTool/userSidebar.jsp" %>
		<!-- /Main Sidebar Container -->
		
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->

			<!-- Main content -->
			<div class="card text-center">
				<div class="card-header">
					<ul class="nav nav-tabs card-header-tabs">
						<li class="nav-item"><a class="nav-link active" href="#">즐겨찾기 목록</a></li>
					</ul>
				</div>
				<div class="nav-tabs-content"> 
					<div class="content">
						<c:choose>
							<c:when test="${bookmarkList != null and fn:length(bookmarkList)>0}">
								<c:forEach var="bookmarkList" items="${bookmarkList }">
									<div class="card mb-3" style="max-width: 1080px;" >
									  <div class="row no-gutters">
									    <div class="col-md-4">
									      <img src="..." alt="...">
									    </div>
									    <div class="col-md-8">
									      <div class="card-body">
									      	<button type="button" class="close" aria-label="Close" onclick="location.href='bookmarkDelete.do?bookmarkId=${bookmarkList.bookmark_id }'">
											  <span aria-hidden="true">&times;</span><div>${bookmarkList.bookmark_id }</div>
											</button>
									        <h5 class="card-title">${bookmarkList.like_click_hotel } 별점</h5>
									        <p class="card-text">지역 평균별점</p>
									        <p class="card-text"><small class="text-muted">리뷰갯수</small></p>
<!-- 									        <input type="button" class="btn btn-warning" value="이동하기"> -->
									      </div>
									    </div>
									  </div>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<div class="card">
									<div class="nav-tabs-content">
										<h1 class="m-0">등록된 호텔이 없습니다.</h1>
									</div>
								</div>
							</c:otherwise>
						</c:choose>	
			<!--페이지이동-->
				<%@ include file="pageExcute/bookmarkPage.jsp" %>
			<!--/페이지이동-->
			
					</div>
					<!-- /.content -->
				</div>
			</div>
			<!-- /.content-wrapper -->

			
		</div>
		<!-- /Content Wrapper. Contains page content -->
		
		<!-- Main Footer -->
			<%@ include file="userTool/userFooter.jsp" %>
		<!-- /Main Footer -->

</body>
</html>
