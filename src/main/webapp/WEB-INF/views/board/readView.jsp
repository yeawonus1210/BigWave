<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>list</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[name='readForm']");
		
		//수정
		$(".update_btn").on("click", function(){
			formObj.attr("action","/board/updateView");
			formObj.attr("method", "get");
			formObj.submit();
		})
		
		//삭제
		$(".delete_btn").on("click", function(){
			
			var deleteYN = confirm("삭제하시겠습니까?");
			
			if(deleteYN == true) {
				
				formObj.attr("action", "/board/delete");
				formObj.attr("method", "post");
				formObj.submit();
				
			}else {
				
				formObj.attr("action", "/board/readView");
				formObj.attr("method","get");
			}

		})
		
		//취소
		$(".list_btn").on("click", function(){
			
			location.href ="/board/list";
		})
	})
	</script>
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
	<img src="<%=request.getContextPath()%>/resources/images/bigwave final logo.jpg"
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
			<section id="container">
			<form name="readForm" role="form" method="post">
				<input type="hidden" id="bno" name="bno" value="${read.bno}"/>
				<table>
					<tbody>
						<tr>
							<td style="display=inline-block wlq"><label for="bno">글 번호</label>
							<input type="text" id="bno" name="bno" value="${read.bno}" /></td>
						</tr>
						<tr>
							<td><label for="title">제목</label><input type="text"
								id="title" name="title" value="${read.title}" /></td>
						</tr>
						<tr>
							<td><label for="content">내용</label>
							<textarea id="content" name="content"><c:out
										value="${read.content}" /></textarea></td>
						</tr>
						<tr>
							<td><label for="writer">작성자</label><input type="text"
								id="writer" name="writer" value="${read.writer}" /></td>
						</tr>
						<tr>
							<td><label for="regdate">작성날짜</label> <fmt:formatDate
									value="${read.regdate}" pattern="yyyy-MM-dd" /></td>
						</tr>
					</tbody>
				</table>
				<div>
					<button type="submit" class="update_btn">수정</button>
					<button type="submit" class="delete_btn">삭제</button>
					<button type="button" class="list_btn">목록</button>	
				</div>
			</form>
			</section>

		</div>
		</div>
		</center>
</body>
</html>

