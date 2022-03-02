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
<title>트립닷컴 | 트립코인</title>

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

<c:set var="useList" value="${requestScope.useTripCoin }"/>
<c:set var="chargeList" value="${requestScope.chargeTripCoin }"/>
<c:set var="tab" value="${requestScope.tab }"/>
<input type="hidden" id="tabId" name="tabId" value="${tab }">
<script>
	window.addEventListener('DOMContentLoaded', function()
		{
			document.getElementById("myTripcoinSide").className += ' active'
			
				let mainTab = document.getElementById("coinTab1").className;
			
			switch(document.getElementById('tabId').value){
				case 'one':
					document.getElementById("coinTab1").className += ' active';
					break;
				case 'two':
					document.getElementById("coinTab2").className += ' active';
					break;
				case '' : 
					document.getElementById("coinTab1").className += ' active';
					break;
				}
		});
</script>
		<!-- Navbar -->
			<%@ include file="userTool/userNav.jsp" %>
		<!-- /Navbar -->
		
		<!-- Main Sidebar Container -->
			<%@ include file="userTool/userSidebar.jsp" %>
		<!-- /Main Sidebar Container -->
		
		
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<div>
				<!-- Nav tabs -->
					<ul class="nav nav-tabs" id="myTab" role="tablist">
					  <li class="nav-item" role="presentation">
					    <a class="nav-link" id="coinTab1" data-toggle="tab" href="#useCoin" onclick="coinTabOneAction()" role="tab" aria-controls="useCoin" aria-selected="false" >이용내역</a>
					  </li>
					  <li class="nav-item" role="presentation">
					    <a class="nav-link" id="coinTab2" data-toggle="tab" href="#chargeCoin" onclick="coinTabTwoAction()" role="tab" aria-controls="chargeCoin" aria-selected="false">충전내역</a>
					  </li>
				</ul>

				<!-- Tab panes -->
					  <div class="tab-content">
					  
					 	 <div class="tab-pane active" id="useCoin" role="tabpanel" aria-labelledby="useCoin-tab">
					 	 	<div class="nav-tabs-content">
								<div class="content">
								
									<section class="ftco-section">
										<table class="table">
											<c:choose>
											<c:when test="${useTripCoin != null  and fn:length(useTripCoin)>0}">
												<thead class="thead-dark">
													<tr>
														<th>이용번호</th>
														<th>이용날짜</th>
														<th>이용금액</th>
<!-- 														<th>트립코인</th> -->
														<th>&nbsp;</th>
													</tr>
												</thead>
												<c:forEach var="useList" items="${useList }">
													<tbody>
														<tr class="alert" role="alert">
															<th scope="row">${useList.coin_id }</th>
															<td>${useList.coin_use_date }</td>
															<td>${useList.coin_use_money }</td>
<%-- 															<td>${user.user_coin }</td> --%>
														</tr>
													</tbody>
												</c:forEach>
											</c:when>
												<c:otherwise>
												<thead class="thead-dark">
													<tr>
														<th>충전번호</th>
														<th>충전날짜</th>
														<th>충전금액</th>
<!-- 														<th>트립코인</th>	 -->
														<th>&nbsp;</th>
													</tr>
												</thead>
												<c:forEach var="chargeList" items="${chargeList }">
													<tbody>
														<tr class="alert" role="alert">
															<th scope="row">${chargeList.coin_id }</th>
															<td>${chargeList.coin_charge_date }</td>
															<td>${chargeList.coin_charge_money }</td>
<%-- 															<td>${user.user_coin }</td> --%>
														</tr>
													</tbody>
												</c:forEach>
												</c:otherwise>
											</c:choose>
										</table>
										<%@ include file="pageExcute/tripCoinPage.jsp"%>
									</section>
								</div>
							</div>
						</div>
					  </div>
				  </div>
			  </div>
		<!-- Main Footer -->
			<%@ include file="userTool/userFooter.jsp" %>
		<!-- /Main Footer -->
</body>
</html>
