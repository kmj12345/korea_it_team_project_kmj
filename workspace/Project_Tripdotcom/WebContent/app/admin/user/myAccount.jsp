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
<title>트립닷컴 | 계정 및 비밀번호</title>

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
			document.getElementById("myAccountSide").className += ' active'
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
			<!-- Content Header (Page header) -->

			<!-- Main content -->
			<div class="card text-left">
			
				<div class="nav-tabs-content">
				    <!-- content --> 
					<div class="content">
						비밀번호 : ******<br>
						이메일 : ${user.user_email }<br>
						회원가입일 : ${user.user_joindate }<br>
						<button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#InformationChange"><i class="fas fa-edit"></i> 수정하기</button>
					<!-- /.content -->
				</div>
			</div>
	        <div class="modal fade" id="InformationChange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	            <div class="modal-dialog modal-lg">
	                <div class="modal-content">
	                    <div class="modal-header">
	                        <h5 class="modal-title" id="exampleModalLabel">이메일 및 비밀번호 수정</h5>
	                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                            <span aria-hidden="true">&times;</span>
	                        </button>
	                    </div>
	                    <form action="userAccountUpdate.do" name="userAccountUpdate" id="userAccountUpdate">
		                    <div class="modal-body">
		                        <div class="row">
		                            <div class="col-md-6">
		                                <div class="form-group">
		                                    <label>이메일</label>
		                                    <input class="form-control" type="text"  name="user_email" placeholder="${user.user_email }">
		                                </div>
		                            </div>
		                        </div>
		                        <div class="row">
		                            <div class="col-md-6">
		                                <div class="form-group">
		                                    <label>비밀번호</label>
		                                    <input class="form-control" type="password" name="user_pw" placeholder="비밀번호">
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="modal-footer">
		                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
		                       <input type="button" class="btn btn-primary" onclick="accountUpdate()" value="수정하기">
<!-- 		                        <button type="button" class="btn btn-primary" onclick="userAccountUpdate()">수정하기</button> -->
		                    </div>
	                    </form>
	                </div>
	            </div>
	        </div>
		</div>
	</div>

			<!-- /.content-wrapper -->
		
		<!-- Main Footer -->
			<%@ include file="userTool/userFooter.jsp" %>
		<!-- /Main Footer -->
</body>
<script src="${pageContext.request.contextPath }/app/admin/user/userTool/userValidation.js"></script>
</html>
