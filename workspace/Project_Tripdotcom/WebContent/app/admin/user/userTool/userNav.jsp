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
		<c:set var="user" value="${sessionScope.user }" /> <!--로그인객체받아옴 --> 
	<div class="wrapper">

		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item">

					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div>
				</li>
				<div>내 정보</div>
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> 
						<i class="fas fa-child"></i> 
						<c:choose>
							<c:when test="${user.user_lastname != null or user.user_firstname != null }">
								<span class="text-xsm">안녕하세요!${user.user_lastname }${user.user_firstname }님</span>
							</c:when>
							<c:otherwise>
								<span class="text-xsm">안녕하세요!</span>
							</c:otherwise>
						</c:choose>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					
						<div class="dropdown-divider"></div>
						<a href="goReservationAll.do" class="dropdown-item text-sm text-muted" id="reservationAll"><i
							class="fas fa-caret-right"></i> 내 예약 </a>
						<div class="dropdown-divider"></div>
						<a href="goMyFavorite.do" class="dropdown-item text-sm text-muted" id="myFavorite"> <i
							class="fas fa-caret-right"></i> 즐겨찾기
						</a>
						<div class="dropdown-divider"></div>
						<a href="/goMyTripcoin.do" class="dropdown-item text-sm text-muted" id="myTripcoin"> <i
							class="fas fa-caret-right"></i> 트립코인
						</a>
						<div class="dropdown-divider"></div>
						<a href="goMyInformation.do" class="dropdown-item text-sm text-muted" id="myInformation"> <i
							class="fas fa-caret-right"></i> 내 정보
						</a>
						<div class="dropdown-divider" id="myAccount"></div>
						<a href="goMyAccount.do" class="dropdown-item text-sm text-muted"> <i
							class="fas fa-caret-right"></i> 계정 및 비밀번호
						</a>
						<div class="dropdown-divider" ></div>
						<a href="userLogout.do" class="dropdown-item text-sm text-muted"> <i
							class="fas fa-caret-right"></i> 로그아웃
						</a>

					</div></li>
				<div>코인</div>
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-copyright"></i>
					<c:choose>
							<c:when test="${user.user_coin == null }">
								<span class="text-xsm">0코인</span>
							</c:when>
							<c:otherwise>
								<span class="text-xsm">${user.user_coin }코인</span>
							</c:otherwise>
						</c:choose>
					</a>
				</li>
			
			
			</ul>
		</nav>
</body>
</html>