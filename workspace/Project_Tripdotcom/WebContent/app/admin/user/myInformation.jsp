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
<title>트립닷컴 | 내정보</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/fontawesome-free-5.15.4-web/css/all.min.css">
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
			document.getElementById("myInformationSide").className += ' active'
		});
</script>
	<c:set var="user" value="${sessionScope.user }" /> <!--로그인객체받아옴 --> 
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
					<div class="content">
								<div>성 : ${user.user_lastname } </div>
						    	<div>이름 : ${user.user_firstname } </div>
						    	<div>성별 : ${user.user_gender } </div>
						    	<div>생년월일 : ${user.user_birth } </div>
						    	<div>이메일주소 : ${user.user_email } </div>
						    	<button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#InformationChange"><i class="fas fa-edit"></i> 수정하기</button>
					<!-- /.content -->
				</div>
			</div>


        <div class="modal fade" id="InformationChange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">회원 정보 수정</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="userInfoUpdate.do">
	                    <div class="modal-body">
	                        <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label>성</label>
	                                    <input class="form-control" type="text"  name="user_lastname" placeholder="${user.user_lastname }">
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label>이름</label>
	                                    <input class="form-control" type="text" name="user_firstname" placeholder="${user.user_firstname }">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label>생년월일</label>
	                                    <input class="form-control" type="date" name="user_birth" >
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label>성별</label>
	                                    <div class="form-group row">
	                                        <div class="col-md-6 custom-control custom-radio">
	                                           &nbsp;&nbsp;
	                                            <input class="custom-control-input" type="radio" id="customRadio1" name="gender" value="남" checked>
	                                            <label for="customRadio1" class="custom-control-label">남</label>
	                                        </div>
	                                        <div class="col-md-6 custom-control custom-radio">
	                                            <input class="custom-control-input" type="radio" id="customRadio2" name="gender" value="여">
	                                            <label for="customRadio2" class="custom-control-label">여</label>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
	                        <button type="submit" class="btn btn-primary">저장하기</button>
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
</html>
