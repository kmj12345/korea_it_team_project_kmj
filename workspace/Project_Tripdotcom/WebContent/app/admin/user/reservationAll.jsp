<%@page import="com.koreait.user.dto.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">

<title>트립닷컴 | 내 예약</title>

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
	<c:set var="resList" value="${requestScope.resList }" />
	<c:set var="reviewList" value="${requestScope.reviewList }" />
	<c:set var="tab" value="${requestScope.tab }" />
	<c:if test="${not empty param.review and  param.review == true }">
		<script>
			alert("리뷰가 등록되었습니다.");
		</script>
	</c:if>
	<c:if test="${not empty param.update and  param.update == true }">
		<script>
			alert("리뷰가 수정되었습니다.");
		</script>
	</c:if>
	<c:if test="${not empty param.delete and  param.delete == true }">
		<script>
			alert("리뷰가 삭제되었습니다.");
		</script>
	</c:if>
	<input type="hidden" id="tabId" name="tabId" value="${tab }">
	<script>
		// 		alert(document.getElementById('tabId').value);
		window
				.addEventListener(
						'DOMContentLoaded',
						function() {
							let tabClass = document
									.getElementById("reservationAllSide").className;
							if (tabClass == 'nav-link') {
								document.getElementById("myFavoriteSide").className = 'nav-link'
								document.getElementById("myTripcoinSide").className = 'nav-link'
								document.getElementById("myInformationSide").className = 'nav-link'
								document.getElementById("myAccountSide").className = 'nav-link'
								document.getElementById("reservationAllSide").className += ' active'
							}
							switch (document.getElementById('tabId').value) {
							case 'one':
								document.getElementById("Maintab1").className += ' active';
								document.getElementById("reservationAlll").className += ' active';
								break;
							case 'two':
								document.getElementById("Maintab2").className += ' active';
								document.getElementById("paymentWaiting").className += ' active';
								break;
							case 'three':
								document.getElementById("Maintab3").className += ' active';
								document.getElementById("paymentCompleted").className += ' active';
								break;
							case 'four':
								document.getElementById("Maintab4").className += ' active';
								document.getElementById("reviewWrite").className += ' active';
								break;
							case 'five':
								document.getElementById("Maintab5").className += ' active';
								document.getElementById("reviewUpdate").className += ' active';
								break;
							case '':
								document.getElementById("Maintab1").className += ' active';
								document.getElementById("reservationAlll").className += ' active';
								break;
							}

						});
	</script>
	<!-- Navbar -->
	<%@ include file="userTool/userNav.jsp"%>
	<!-- /Navbar -->

	<!-- Main Sidebar Container -->
	<%@ include file="userTool/userSidebar.jsp"%>
	<!-- /Main Sidebar Container -->

	<!-- Content Wrapper. Contains page content -->
	<!-- Main content -->
	<div class="content-wrapper">
		<div>
			<!-- Nav tabs -->
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="Maintab1" data-toggle="tab" href="#reservationAlll"
					onclick="tabOneAction()" role="tab" aria-controls="reservationAll"
					aria-selected="false">전체</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="Maintab2" data-toggle="tab" href="#paymentWaiting"
					onclick="tabTwoAction()" role="tab" aria-controls="paymentWaiting"
					aria-selected="false">결제대기</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="Maintab3" data-toggle="tab" href="#paymentCompleted"
					onclick="tabThreeAction()" role="tab"
					aria-controls="paymentCompleted" aria-selected="false">결제완료</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="Maintab4" data-toggle="tab" href="#reviewWrite" role="tab"
					onclick="tabFourAction()" aria-controls="reviewWrite"
					aria-selected="false">리뷰작성</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="Maintab5" data-toggle="tab" href="#reviewUpdate" role="tab"
					onclick="tabFiveAction()" aria-controls="reviewUpdate"
					aria-selected="false">리뷰수정</a></li>

			</ul>

			<!-- Tab panes -->
			<div class="tab-content">

				<div class="tab-pane" id="reservationAlll" role="tabpanel"
					aria-labelledby="reservationAll-tab">
					<div class="card text-center">
						<div class="nav-tabs-content">
							<div class="content">
								<c:choose>
									<c:when test="${resList != null  and fn:length(resList)>0}">
										<c:forEach var="res" items="${resList }">
											<div class="card" style="max-width: 1080px;">
												<div class="card-header">
													<div class="row">
														<div class="col-sm-6" align="left">
															<h5 class="m-0">예약번호:${res.reservation_id }</h5>
														</div>
														<div class="col-sm-6" align="right">
															<h5 class="m-0">예약날짜:${res.reservation_date }</h5>
														</div>
													</div>
												</div>
												<div class="card-body">
													<div class="row">
														<div class="col-sm-6" align="left">호텔이름:트립호텔</div>
														<div class="col-sm-6" align="right">객실금액:12345원</div>
													</div>
													<div class="row">
														<div class="col-sm-6" align="left">체크인날짜:${res.checkin_date }</div>
														<div class="col-sm-6" align="left">체크아웃날짜:${res.checkout_date }</div>
													</div>
													<div class="row">
														<div class="col-sm-6" align="left">투숙객이름:${res.reservation_lastname}${res.reservation_firstname }</div>
														<div class="col-sm-6" align="right">${res.reservation_state}</div>
													</div>
													<div class="atag" align="right">
<!-- 														<a href="javascript:test()" class="btn btn-primary">예약확인</a> -->
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<div class="card">
											<div class="card-header">
												<h1 class="m-0" >예약이없습니다.</h1>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
								<!-- 									페이지이동 -->
								<%@ include file="pageExcute/resAllPage.jsp"%>
								<!-- 									/페이지이동 -->
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="paymentWaiting" role="tabpanel"
					aria-labelledby="paymentWaiting-tab">
					<div class="card text-center">
						<div class="nav-tabs-content">
							<div class="content">
								<c:choose>
									<c:when test="${resList != null  and fn:length(resList)>0}">
										<c:forEach var="res" items="${resList }">
											<div class="card" style="max-width: 1080px;">
												<div class="card-header">
													<div class="row">
														<div class="col-sm-6" align="left">
															<h5 class="m-0">예약번호:${res.reservation_id }</h5>
														</div>
														<div class="col-sm-6" align="right">
															<h5 class="m-0">예약날짜:${res.reservation_date }</h5>
														</div>
													</div>
												</div>
												<div class="card-body">
													<div class="row">
														<div class="col-sm-6" align="left">호텔이름:트립호텔</div>
														<div class="col-sm-6" align="right">객실금액:12345원</div>
													</div>
													<div class="row">
														<div class="col-sm-6" align="left">체크인날짜:${res.checkin_date }</div>
														<div class="col-sm-6" align="left">체크아웃날짜:${res.checkout_date }</div>
													</div>
													<div class="row">
														<div class="col-sm-6" align="left">투숙객이름:${res.reservation_lastname}${res.reservation_firstname }</div>
														<div class="col-sm-6" align="right">${res.reservation_state}</div>
													</div>
													<div class="atag" align="right">
<!-- 														<a href="#" class="btn btn-primary">예약확인</a> -->
													</div>
												</div>
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<div class="card">
											<div class="card-header">
												<h1 class="m-0">예약이없습니다.</h1>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
								<!--페이지이동-->
								<%@ include file="pageExcute/resAllPage.jsp"%>
								<!--/페이지이동-->
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="paymentCompleted" role="tabpanel"
					aria-labelledby="paymentCompleted-tab">
					<div class="card text-center">
						<div class="nav-tabs-content">
							<c:choose>
								<c:when test="${resList != null  and fn:length(resList)>0}">
									<c:forEach var="res" items="${resList }">
										<div class="card" style="max-width: 1080px;">
											<div class="card-header">
												<div class="row">
													<div class="col-sm-6" align="left">
														<h5 class="m-0">예약번호:${res.reservation_id }</h5>
													</div>
													<div class="col-sm-6" align="right">
														<h5 class="m-0">예약날짜:${res.reservation_date }</h5>
													</div>
												</div>
											</div>
											<div class="card-body">
												<div class="row">
													<div class="col-sm-6" align="left">호텔이름:트립호텔</div>
													<div class="col-sm-6" align="right">객실금액:12345원</div>
												</div>
												<div class="row">
													<div class="col-sm-6" align="left">체크인날짜:${res.checkin_date }</div>
													<div class="col-sm-6" align="left">체크아웃날짜:${res.checkout_date }</div>
												</div>
												<div class="row">
													<div class="col-sm-6" align="left">투숙객이름:${res.reservation_lastname}${res.reservation_firstname }</div>
													<div class="col-sm-6" align="right">${res.reservation_state}</div>
												</div>
												<div class="atag" align="right">
<!-- 													<a href="#" class="btn btn-primary">예약확인</a> -->
												</div>
											</div>
										</div>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<div class="card">
										<div class="card-header">
											<h1 class="m-0">예약이없습니다.</h1>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							<!--페이지이동-->
							<%@ include file="pageExcute/resAllPage.jsp"%>
							<!--/페이지이동-->
						</div>
					</div>
				</div>
				<div class="tab-pane" id="reviewWrite" role="tabpanel"
					aria-labelledby="reviewWrite-tab">
					<div class="card text-center">
						<c:choose>
							<c:when test="${resList != null  and fn:length(resList)>0}">
								<c:forEach var="reservation" items="${resList }"  varStatus="i"> 
									<div class="card" style="max-width: 1080px;">
										<div class="card-header">
											<div class="row">
												<div class="col-sm-6" align="left">
													<h5 class="m-0">예약번호:${reservation.reservation_id }</h5>
												</div>
												<div class="col-sm-6" align="right">
													<h5 class="m-0">예약날짜:${reservation.reservation_date }</h5>
												</div>
											</div>
										</div>
										<div class="card-body">
											<div class="row">
												<div class="col-sm-6" align="left">호텔이름:트립호텔</div>
												<div class="col-sm-6" align="right">객실금액:12345원</div>
											</div>
											<div class="row">
												<div class="col-sm-6" align="left">체크인날짜:${reservation.checkin_date }</div>
												<div class="col-sm-6" align="left">체크아웃날짜:${reservation.checkout_date }</div>
											</div>
											<div class="row">
												<div class="col-sm-6" align="left">투숙객이름:${reservation.reservation_lastname}${reservation.reservation_firstname }</div>
												<div class="col-sm-6" align="right">${reservation.reservation_state}</div>
											</div>
											<div class="atag" align="right">
												<button type="button" class="btn btn-primary" id="reviewResNum" value="${reservation.reservation_id }"
													data-toggle="modal" data-target="#reviewInsert${reservation.reservation_id }" >
													<i class="fas fa-edit"></i>리뷰작성
												</button>
											</div>
											
										</div>
									</div>
									<div class="modal fade" id="reviewInsert${reservation.reservation_id }" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">리뷰 등록</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<form action="reviewInsert.do" name="reviewVal" id="reviewVal">
<%-- 													<input type="hidden" name="reservation_id" value="${reservation.reservation_id }"> --%>
													<input type="hidden" id="reservation_id" name="reservation_id" value="${reservation.reservation_id }">
													<input type="hidden" id="content_modal" name="content_modal" value="">
													<input type="hidden" id="clean_modal" name="clean_modal" value="">
													<input type="hidden" id="location_modal" name="location_modal" value="">
													<input type="hidden" id="facilities_modal" name="facilities_modal" value="">
													<input type="hidden" id="service_modal" name="service_modal" value="">
													<input type="hidden" id="member_modal" name="member_modal" value="">
													<div class="modal-body">
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label>여행자${reservation.reservation_id }</label><br>
																	<select name="review_trip_member"
																		id="review_trip_member${reservation.reservation_id }">
																		<option value="출장">출장</option>
																		<option value="가족">가족</option>
																		<option value="개인">개인</option>
																		<option value="지인예약대행">지인예약대행</option>
																		<option value="커플">커플</option>
																		<option value="친구">친구</option>
																		<option value="기타">기타</option>
																	</select>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>청결도</label><br> <select name="review_clean"
																		id="review_clean${reservation.reservation_id }">
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																	</select>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>위치</label><br> <select
																		name="review_location" id="review_location${reservation.reservation_id }">
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																	</select>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>호텔시설</label><br> <select
																		name="review_facilities" id="review_facilities${reservation.reservation_id }">
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																	</select>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>서비스</label><br> <select
																		name="review_service" id="review_service${reservation.reservation_id }">
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<label>리뷰내용</label>
																	<textarea class="form-control" rows="5" cols=""
																		name="review_content" id="review_content${reservation.reservation_id }"></textarea>
																</div>
															</div>
														</div>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"
															data-dismiss="modal">닫기</button>
															<input type="button" class="btn btn-primary" onclick="reviewInsert(${reservation.reservation_id })" value="저장하기">
													</div>
												</form>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<div class="card">
									<div class="card-header">
										<h1 class="m-0">예약이없습니다.</h1>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
						<!--페이지이동-->
						<%@ include file="pageExcute/resAllPage.jsp"%>
						<!--/페이지이동-->
					</div>
				</div>
				<div class="tab-pane" id="reviewUpdate" role="tabpanel"
					aria-labelledby="reviewUpdate-tab">
					<div class="card text-center">
						<c:choose>
							<c:when test="${reviewList != null  and fn:length(reviewList)>0}">
								<c:forEach var="reviewList" items="${reviewList }"  varStatus="i"> 
									<div class="card" style="max-width: 1080px;">
										<div class="card-header">
											<div class="row">
												<div class="col-sm-6" align="left">
													<h5 class="m-0">예약번호:${reviewList.reservation_id }</h5>
												</div>
												<div class="col-sm-6" align="right">
													<h5 class="m-0">리뷰번호:${reviewList.review_id }</h5>
												</div>
											</div>
										</div>
										<div class="card-body">
											<div class="row">
												<div class="col-sm-2" align="right">청결도:${reviewList.review_clean}</div>
												<div class="col-sm-2" align="right">위치:${reviewList.review_location}</div>
												<div class="col-sm-2" align="right">호텔시설:${reviewList.review_facilities}</div>
												<div class="col-sm-2" align="right">서비스:${reviewList.review_service}</div>
												<div class="col-sm-2" align="right">여행자:${reviewList.review_trip_member }</div>
											</div>
											<br>
											<div class="row">
												<div class="col-sm-2" align="center" ><br><h5>리뷰내용:</h5></div>
												<textarea rows="" cols="" style="width:800px; float: left;" class="col-sm-8" readonly> ${reviewList.review_content}</textarea>
											<div class="col-sm-1" align="left">
												<button type="button" style="float: right;" class="btn btn-primary" id="reviewResNum" value="${reviewList.reservation_id }"
													data-toggle="modal" data-target="#reviewUpdate${reviewList.reservation_id }" >
													리뷰수정
												</button><br>
											</div>
											<div class="col-sm-1" align="left">
												<button type="button" style="float: right;" class="btn btn-primary" id="reviewResNum" 
												onclick="location.href='${pageContext.request.contextPath }/replyDelete.do?review_id=${reviewList.review_id }'" >
													리뷰삭제
												</button><br>
											</div>
											</div>
											
										</div>
									</div>
									<div class="modal fade" id="reviewUpdate${reviewList.reservation_id }" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">리뷰 수정</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<form action="reviewUpdate.do" id="reviewVal" name="reviewVal">
<!-- 													<input type="text" id="reservation_id" name="reservation_id" value=""> -->
													<input type="hidden" id="reservation_id" name="reservation_id" value="${reviewList.reservation_id }">
													<input type="hidden" id="content_modal" name="content_modal" value="">
													<input type="hidden" id="clean_modal" name="clean_modal" value="">
													<input type="hidden" id="location_modal" name="location_modal" value="">
													<input type="hidden" id="facilities_modal" name="facilities_modal" value="">
													<input type="hidden" id="service_modal" name="service_modal" value="">
													<input type="hidden" id="member_modal" name="member_modal" value="">
													<div class="modal-body">
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label>여행자</label><br>
																	<select name="review_trip_member"
																		id="review_trip_member${reviewList.reservation_id }">
																		<option value="출장">출장</option>
																		<option value="가족">가족</option>
																		<option value="개인">개인</option>
																		<option value="지인예약대행">지인예약대행</option>
																		<option value="커플">커플</option>
																		<option value="친구">친구</option>
																		<option value="기타">기타</option>
																	</select>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>청결도</label><br> <select name="review_clean${reviewList.reservation_id }"
																		id="review_clean${reviewList.reservation_id }">
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																	</select>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>위치</label><br> <select
																		name="review_location" id="review_location${reviewList.reservation_id }">
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																	</select>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>호텔시설</label><br> <select
																		name="review_facilities" id="review_facilities${reviewList.reservation_id }">
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																	</select>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>서비스</label><br> <select
																		name="review_service" id="review_service${reviewList.reservation_id }">
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<label>리뷰내용</label>
																	<textarea class="form-control" rows="5" cols=""
																		name="review_content" id="review_content${reviewList.reservation_id }"></textarea>
																</div>
															</div>
														</div>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"
															data-dismiss="modal">닫기</button>
														<input type="button" class="btn btn-primary" onclick="reviewUpdate(${reviewList.reservation_id })" value="수정하기">
													</div>
												</form>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<div class="card">
									<div class="card-header">
										<h1 class="m-0">예약이없습니다.</h1>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
						<!--페이지이동-->
						<%@ include file="pageExcute/resAllPage.jsp"%>
						<!--/페이지이동-->
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- /.content-wrapper -->


	<!-- Main Footer -->
	<%@ include file="userTool/userFooter.jsp"%>
	<!-- /Main Footer -->

</body>
</html>
