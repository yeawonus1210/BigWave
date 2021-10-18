<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
		
		<h2><i class="fas fa-swimming-pool"></i>	ticket price & open hours	<i class="fas fa-swimmer"></i></h2>
		
		<p class="box1">WATER PARK OPEN HOURS: 9:00AM - 8:00PM</P>
		<p class="box1">PARKING PRICES: EVERY 3HOURS - $10</P>
		
		
		<br>
		
		<h3> DAY PASS & GREAT DEALS </h3>
		
		
		
		<table align="center">
				
			<tr>
		
				<th>TICKET</th>
				<th>PRICE</th>
				<th>OPEN HOURS</th>
				<th>AVAILABLE AGES</th>
				<th>EXPLANATION</th>	
			
			</tr>
				  
			<tr>
				<td>ALLDAY PASS</td>
				<td>$55</td>
				<td>9:00AM - 8:00PM</td>
				<td>All Ages</td>
				<td>All facilities, including water rides, are freely available all day.</td>
				
			</tr>
				  
			<tr>
					
				<td>NIGHT PASS</td>
				<td>$35</td>
				<td>4:30PM - 8:00PM</td>
				<td>All Ages</td>
				<td>All facilities, including water rides, are freely available during the afternoon.</td>
			
			</tr>
				
			<tr>
					
				<td>BABY PASS</td>
				<td>$14.99</td>
				<td>9:00AM - 4:30PM</td>
				<td>Under 4 years of age</td>
				<td>Special benefits for babies only! All facilities are freely available for children only.</td>
			
			</tr>
				
			<tr>

				<td>BIG 3</td>
				<td>$25</td>
				<td>9:00AM - 8:00PM </td>
				<td>All Ages</td>
				<td>Choose the three rides you want and get a discount.</td>

			</tr>
			
			<tr>

				<td>BIG 5</td>
				<td>$43.99</td>
				<td>9:00AM - 8:00PM </td>
				<td>All Ages</td>
				<td>Choose the five rides you want and get a discount.</td>

			</tr>
			
		</table>
			
		<p class="box2">*BIG 3 / BIG 5 - Hot springs or surfing facilities excluded from the benefits
			
			
		<br></br>
			
		<h3> ADMISSION & SINGLE RIDE PRICE </h3>
			
		<table align="center">
				
			<tr>
		
				<th>TICKET</th>
				<th>PRICE</th>
				<th>OPEN HOURS</th>
				<th>AVAILABLE AGES</th>
				<th>EXPLANATION</th>	
			
			</tr>
				  
			<tr>
				<td>BASIC ADMISSION</td>
				<td>$10</td>
				<td>9:00AM - 8:00PM</td>
				<td>All Ages</td>
				<td>Basic admission fee. Have to pay extra for rides, hot springs, and surfing.</td>
				
			</tr>
				  
			<tr>
					
				<td>SURFING ONLY</td>
				<td>$25.99</td>
				<td>9:00AM - 8:00PM</td>
				<td>Over 10 years of age</td>
				<td>A ticket for customers who only want to use surfing facilities.</td>
			
			</tr>
				
			<tr>
					
				<td>HOT SPRINGS ONLY</td>
				<td>$26.99</td>
				<td>9:00AM - 8:00PM</td>
				<td>Over 10 years of age</td>
				<td>A ticket for customers who only want to use Hot Springs facilities.</td>
			
			</tr>
				
			<tr>

				<td>WATERSLIDE</td>
				<td>Each $10</td>
				<td>9:00AM - 8:00PM </td>
				<td>Over 10 years of age</td>
				<td>Price of each one-time use of all waterslide facilities in 'Big Wave'.</td>

			</tr>
			
			<tr>

				<td>KIDS SLIDE</td>
				<td>Each $9</td>
				<td>9:00AM - 8:00PM </td>
				<td>Under 10 years of age</td>
				<td>Price of each one-time use of all waterslide facilities for kids.</td>

			</tr>
			
			<tr>

				<td>BABY SLIDE</td>
				<td>Each $7</td>
				<td>9:00AM - 4:30PM </td>
				<td>Under 4 years of age</td>
				<td>Price of each one-time use of all waterslide facilities for babies.</td>

			</tr>
		
		</table>
			
		<p class="box2">* Water slide over 10 years of age - have 12 slides / Water slide for kids - have 7 slides / water slide for baby - have 4 slides</p>
			
		<br></br>
				
				
		<h3>OTHER BENEFITS</h3>
		
		<table align="center">
		
			<tr>
		
				<th>TICKET</th>
				<th>PRICE</th>
				<th>OPEN HOURS</th>
				<th>AVAILABLE AGES</th>
				<th>EXPLANATION</th>
					
			</tr>
			
			<tr>

				<td>PATRIOTS AND VETERANS</td>
				<td>50% Off Discount</td>
				<td>9:00AM - 8:00PM </td>
				<td>All Ages</td>
				<td>Patriots and veterans will receive a 50% discount off the price of all tickets.</td>

			</tr>
			
			<tr>

				<td>FAMILY DISCOUNT</td>
				<td>10% Off Discount</td>
				<td>9:00AM - 8:00PM </td>
				<td>All Ages</td>
				<td>Families with five or more people get 10% off the ticket amount per person.</td>

			</tr>
			
			<tr>

				<td>GROUP DISCOUNT</td>
				<td>15% Off Discount</td>
				<td>9:00AM - 8:00PM </td>
				<td>All Ages</td>
				<td>Group of 20 or more people get 10% off the total ticket amount.</td>

			</tr>
			
			<tr>

				<td>UNER 24 MONTHS BABY </td>
				<td>Free</td>
				<td>9:00AM - 8:00PM </td>
				<td>Under 24 months baby</td>
				<td>Babies under 24 months old are allowed free admission.</td>

			</tr>
			
			</table>
		
			<p class="box2">* Not applicable to those who purchase only Basic admission ticket. / Pre-booking is required when applying group discount (check'Plan a Visit' page).
			</p>
		
		    <br></br>
			<br></br>
		   
		   
		<footer>			
			<br>
			<p class="footer">COPYRIGHT INFORMATION : Footer</p>
			<p class="footer">Author: Yewon Lee; Last-update: 3/9/2020; Copyright website symbol: &copy;Canva.com; Copyright icons: &copy;Fontawesome.com/icons;  
			
			<br></br>

		</footer>


	
</body>
</html>		