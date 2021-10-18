<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Comapatble" content"ie=edge">
<title>Big Wave</title>
 <script src="https://kit.fontawesome.com/e29c00f227.js" crossorigin="anonymous"></script>
<link href="<%=request.getContextPath()%>/resources/style/main.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Bangers&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css?family=Fredoka+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bangers|Open+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Acme&display=swap" rel="stylesheet">
</head>

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
		
		<h2><i class="fas fa-swimming-pool"></i>	Plan a visit	<i class="fas fa-swimmer"></i></h2>
		
		
		<h3><i class="fas fa-fish" style= "color: yellow;"></i>	Plan a Visit to 'Big Wave' ! <i class="fas fa-tint" style="color: yellow;"></i></h3>
		
		
		<p>Please enter your name, email address, phone number, zip codes, number of people, and select date of visit and press the 'Submit' button </p>
		<p>to complete your visit date reservation. If you reserve a date for your visit in advance, you'll get a three-hour free parking ticket!</p>
		
		<br></br>

	<div class="container">
	
	<div id="error"></div>
	
	
		<div style="text-align:center">
		<p class="box1">PLAN A VISIT FORM</p>
		<p>* Please put the correct input value in all items.</p>
		</div>
  	
		<form id="form" action="${pageContext.servletContext.contextPath}/form/visitform_result" method="post">
		<div class="row">
    
		<div class="column">
		<img src="<%=request.getContextPath()%>/resources/images/visit.jpg" style="width:100%">
		</div>
    
		<div class="column">
		

		
        <label for="name">Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>
        <label for="phone">Phone Number</label>
        <input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>
        <label for="visitday">Visit Date</label>
		<br>
        <input type="date" id="visit" name="visitday">
        <br><br>
		<label for="tickettype">ticket type</label> 
		<select id="tickettype" name="tickettype">
			<option value="AllDay Pass">AllDay Pass - $55</option>
			<option value="Night Pass">Night Pass - $35</option>
			<option value="Baby Pass">Baby Pass - $14.99</option>
			<option value="Big3">Big 3 - $25</option>
			<option value="Big5">Big 5 - $43.99</option>
		</select>
		
		<label for="numppl">amount</label>
		<br>
		<input type="number" id="numppl" name="numppl">
		<br></br>
		E-mail&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" id="email" name="email" required/>
		<br>
		
		<input class="button" type="submit" value="submit" onclick="check()">
        
		</form>
		
		</div>
		</div>
	</div>
		<script>
		
		function check(){
			
				var email = document.getElementById("email");
				var temp = /^[a-z0-9]{2,}@[a-z0-9]{2,}\.[a-z]{2,}$/;
				if(!temp.test(email.value)){
				alert("Please input right E-mail form");
				email.focus();
				return plan_a_visit;
	}	
	
}	

		</script>
		
		<br></br>
		<br></br>
		

		<footer>
		<br>
		<p class="footer">COPYRIGHT INFORMATION : Footer</p>
		<p class="footer">Author: Yewon Lee; Last-update: 3/9/2020; Copyright website symbol: &copy;Canva.com; Copyright icons: &copy;Fontawesome.com/icons;  
		<br>
		</br>
	
		</footer>			
			
			
			
						

			
			
			
			
			
		
</body>
</html>