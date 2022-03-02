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
	<nav aria-label="Page navigation example">
		<ul class="pagination">
		<c:if test="${nowPage > 1 }">
			<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/goMyFavorite.do?page=${nowPage-1 }"aria-label="Previous">
			 <span aria-hidden="true">&laquo;</span>
			</a></li>
		 </c:if>
		 
		 <c:forEach var="i" begin="${startPage}" end="${endPage }">
				<c:choose>
					<c:when test="${i == nowPage }">
					<li class="page-item active"><a class="page-link " href="${pageContext.request.contextPath }/goMyFavorite.do?page=${i}">${i}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item "><a class="page-link " href="${pageContext.request.contextPath }/goMyFavorite.do?page=${i}">${i}</a></li>
					</c:otherwise>					
				</c:choose>
			</c:forEach>
			
		<c:if test = "${nowPage<totalPage }">
			<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/goMyFavorite.do?page=${nowPage+1 }" aria-label="Next">
			<span aria-hidden="true">&raquo;</span>
			</a></li>
		</c:if>											
		</ul>
	</nav>
</body>
</html>