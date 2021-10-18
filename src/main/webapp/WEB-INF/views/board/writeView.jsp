<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Q&A</title>
 <script src="https://kit.fontawesome.com/e29c00f227.js" crossorigin="anonymous"></script>
<link href="<%=request.getContextPath()%>/resources/style/main.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Bangers&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css?family=Fredoka+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bangers|Open+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Acme&display=swap" rel="stylesheet">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[name='writeForm']");
		$(".write_btn").on("click", function() {
			if (fn_valiChk()) {
				return false;
			}
			formObj.attr("action", "/board/write");
			formObj.attr("method", "post");
			formObj.submit();
		});
	})
	function fn_valiChk() {
		var regForm = $("form[name='writeForm'] .chk").length;
		for (var i = 0; i < regForm; i++) {
			if ($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null) {
				alert($(".chk").eq(i).attr("title"));
				return true;
			}
		}
	}
</script>

<body>
	<header>
		
		<img src="<%=request.getContextPath()%>/resources/images/bigwave final logo.jpg" alt="big wave" width="400" height="350">
		
			
	</header>
	
		
		<div class="navbar" id="mynav">
		
			<a class="navlink" href="${pageContext.servletContext.contextPath}/main">HOME</a>
			<a class="navlink" href="${pageContext.servletContext.contextPath}/price_and_open">PRICE &amp; OPEN HOURS</a>
			<a class="navlink" href="${pageContext.servletContext.contextPath}/plan_a_visit">PLAN A VISIT</a>
			<a class="navlink" href="${pageContext.servletContext.contextPath}/board/writeView">Q&A</a>
			
		</div>
		
		<script>
		window.onscroll = function() {myFunction()};

		var navbar = document.getElementById("mynav");
		var sticky = navbar.offsetTop;

		function myFunction() {
		if (window.pageYOffset > sticky) {
		navbar.classList.add("sticky");
		} 
		else {
		navbar.classList.remove("sticky");
		}
		}
		
		
		</script>
		
		<br>
		
		<div class="content">
		
		<h2><i class="fas fa-swimming-pool"></i>	게시판	<i class="fas fa-swimmer"></i></h2>


		<div id="root">
		
		<div>
			<%@include file="nav.jsp" %>
		
		</div>
			
			
			<center>
			<section id="container_q">
				<form name="writeForm" method="post" action="${pageContext.servletContext.contextPath}/board/write">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" class="chk" title="제목을 입력해주세요." />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea id="content" name="content" class="chk" title="내용을 입력해주세요."></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="writer">작성자</label><input type="text" id="writer" name="writer" class="chk" title="작성자를 입력해주세요." />
								</td>
							<tr>
								<td>						
									<button type="submit" class="write_btn">작성</button>
								</td>
							</tr>			
						</tbody>			
					</table>
				</form>
			</section>
		
		</div>
		</div>
		</center>
</body>
</html>