<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>list</title>
<script src="https://kit.fontawesome.com/e29c00f227.js"
	crossorigin="anonymous"></script>
<link href="<%=request.getContextPath()%>/resources/style/main.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Bangers&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Fredoka+One&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Bangers|Open+Sans&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Acme&display=swap"
	rel="stylesheet">
</head>
<body>
	<header> 
	<img
		src="<%=request.getContextPath()%>/resources/images/bigwave final logo.jpg"
		alt="big wave" width="400" height="350"> </header>


	<div class="navbar" id="mynav">

		<a class="navlink"
			href="${pageContext.servletContext.contextPath}/main">HOME</a> <a
			class="navlink"
			href="${pageContext.servletContext.contextPath}/price_and_open">PRICE
			&amp; OPEN HOURS</a> <a class="navlink"
			href="${pageContext.servletContext.contextPath}/plan_a_visit">PLAN
			A VISIT</a> <a class="navlink"
			href="${pageContext.servletContext.contextPath}/board/writeView">Q&A</a>

	</div>

	<script>
		window.onscroll = function() {
			myFunction()
		};

		var navbar = document.getElementById("mynav");
		var sticky = navbar.offsetTop;

		function myFunction() {
			if (window.pageYOffset > sticky) {
				navbar.classList.add("sticky");
			} else {
				navbar.classList.remove("sticky");
			}
		}
	</script>

	<br>

	<div class="content">

		<h2>
			<i class="fas fa-swimming-pool"></i> 게시판 <i class="fas fa-swimmer"></i>
		</h2>


		<div id="root">
		
		<div>
			<%@include file="nav.jsp" %>
		
		</div>

			<center>
				<section id="container_q">
				<form role="form" method="post" action="${pageContext.servletContext.contextPath}/board/write">
					<table>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
						</tr>

						<c:forEach items="${list}" var="list">
							<tr>
								<td><c:out value="${list.bno}" /></td>
								<td>
									<a href="${pageContext.servletContext.contextPath}/board/readView?bno=${list.bno}">
									<c:out value="${list.title}" /></a></td>
								<td><c:out value="${list.writer}" /></td>
								<td><fmt:formatDate value="${list.regdate}"
										pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</table>
				</form>
				</section>
		</div>
	</div>
	</center>
</body>
</html>