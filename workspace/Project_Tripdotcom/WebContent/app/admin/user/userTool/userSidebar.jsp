<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="${pageContext.request.contextPath }/index.do" class="brand-link"> <img
				src="dist/img/tripdotcomLogo.PNG" alt="tripdotcomLogo"
				class="brand-text ebookingImg" style="opacity: .8">
			</a>

			<!-- Sidebar -->
			<div class="sidebar">



				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
							<li class="nav-item" ><a href="goReservationAll.do" class="nav-link" id="reservationAllSide">
									<i class="nav-icon fas fa-list"></i>
									<p>내 예약</p>
							</a></li>
							<li class="nav-item" ><a href="/goMyFavorite.do" class="nav-link" id="myFavoriteSide"> <i
									class="nav-icon fas fa-list"></i>
									<p>즐겨찾기</p>
							</a></li>
							<li class="nav-item"><a href="/goMyTripcoin.do" class="nav-link" id="myTripcoinSide"> <i
									class="nav-icon fas fa-list"></i>
									<p>트립코인</p>
							</a></li>
							<li class="nav-item"><a href="goMyInformation.do" class="nav-link" id="myInformationSide"> <i
									class="nav-icon fas fa-list fas"></i>
									<p>내 정보</p>
							</a></li>
							<li class="nav-item"><a href="goMyAccount.do" class="nav-link" id="myAccountSide"> <i
									class="nav-icon fas fa-list"></i>
									<p>계정 및 비밀번호</p>
							</a></li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

</body>
<script src="${pageContext.request.contextPath }/app/admin/user/userTool/userTabMove.js"></script>
</html>