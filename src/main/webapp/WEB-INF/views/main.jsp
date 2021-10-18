<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Big Wave</title>
 <script src="https://kit.fontawesome.com/e29c00f227.js"></script>
<link rel="stylesheet" type="text/css" href="style/main.css">
<link href="https://fonts.googleapis.com/css?family=Bangers&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css?family=Fredoka+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bangers|Open+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Acme&display=swap" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/style/main.css" rel="stylesheet" />

</head>

<body>
	<header>
		
		<img src="<%=request.getContextPath()%>/resources/images/bigwave final logo.jpg" alt="big wave" width="400" height="350">
		
			
	</header>
	
		
		<nav class="navbar" id="mynav">
		
			<a class="navlink" href="${pageContext.servletContext.contextPath}/main">HOME</a>
			<a class="navlink" href="${pageContext.servletContext.contextPath}/price_and_open">PRICE &amp; OPEN HOURS</a>
			<a class="navlink" href="${pageContext.servletContext.contextPath}/plan_a_visit">PLAN A VISIT</a>
			<a class="navlink" href="${pageContext.servletContext.contextPath}/board/writeView">Q&A</a>
			
		
		</nav>
		
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
		
		<h2><i class="fas fa-swimming-pool"></i>	WELCOME TO BIG WAVE WATER PARK !	<i class="fas fa-swimmer"></i></h2>

	
		
		
		<h3><i class="fas fa-fish" style= "color: yellow;"></i>	You've waited a long time! Finally, 'BIG WAVE' came to Boston.	<i class="fas fa-tint" style="color: yellow;"></i></h3> 
		<p>The Big Wave is the largest water park in Boston and has more than 20 water rides for children and adults to enjoy.</p>
		<p>Enjoy various water slides and enjoy surfing or hot springs!</p>
		<p>We have the longest water slide in Massachusetts and have surfing facilities to enjoy inside the best technology-driven indoor manmade waves!</p>
		
		<br></br>
		
		
		
		<div class="slideshow-container">

		<div class="mySlides fade">
		<div class="numbertext">1 / 3</div>
		<img src="<%=request.getContextPath()%>/resources/images/waterpark3-1.jpg" style="width:100%">

        </div>

		<div class="mySlides fade">
		<div class="numbertext">2 / 3</div>
		<img src="<%=request.getContextPath()%>/resources/images/waterpark1.jpg" style="width:100%">

		</div>

		<div class="mySlides fade">
		<div class="numbertext">3 / 3</div>
		<img src="<%=request.getContextPath()%>/resources/images/waterpark2.jpg" style="width:100%">
 
		</div>

		</div>

		<br>

		<div style="text-align:center">
		
		<span class="dot"></span> 
		<span class="dot"></span> 
		<span class="dot"></span> 

		</div>

		<script>
		
		var slideIndex = 0;
		showSlides();

		function showSlides() {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		for (i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";  
		}
  
		slideIndex++;
		
		if (slideIndex > slides.length) {slideIndex = 1}    
		for (i = 0; i < dots.length; i++) {
		dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex-1].style.display = "block";  
		dots[slideIndex-1].className += " active";
		setTimeout(showSlides, 3000); 
		}

		</script>

		
		<h2><i class="fas fa-swimming-pool"></i>	The speciality of big wave water park	<i class="fas fa-swimmer"></i></h2>
		
		<br>
		
		<div class="box">
			<img src="<%=request.getContextPath()%>/resources/images/special1.jpeg" alt="special1" width="250" height="200">
			<p class="box1"> 1. The largest indoor and outdoor water park in the Boston area.</p>
			<p class="box2">- We have more than 1300000 Square Foot of outdoor facilities and 1500000 Square Foot of indoor facilities.</p>
			

		</div>
		
		<div class="box">
			<img src="<%=request.getContextPath()%>/resources/images/special2.jpg" alt="special2" width="200" height="182">
			<p class="box1"> 2.  We have various activities</p>
			<p class="box2">- Enjoy surfing on high-end, high-tech, man-made waves. Available indoors and outdoors!</p>
			<p class="box2">- We also have hot spring facilities. Feel comfortable in warm water.</p>
		</div>
		
		<div class="box">
			<img src="<%=request.getContextPath()%>/resources/images/special3.jpg" alt="special3" width="180" height="127">
			<p class="box1"> 3.	A reasonable price</p>
			<p class="box2">- You're afraid of water? You're afraid of heights? Don’t worry! Admission is very cheap so that you don't feel like you're wasting money.</p>
			<p class="box2">- We sell configuration set tickets for customers to enjoy only the rides or activities they want.</p>

		</div>
		
		</div>

		<br></br>
		<br></br>
		
		
		
		
		<footer>
		<br>
		<p class="footer">COPYRIGHT INFORMATION : Footer</p>
		<p class="footer">Author: Yewon Lee; Last-update: 3/9/2020; Copyright website symbol: &copy;Canva.com; Copyright icons: &copy;Fontawesome.com/icons;  
		<br><br>
		
	
		</footer>


	
</body>
</html>

  
