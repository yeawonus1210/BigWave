<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이름:${reserveInfo.name}</h3>
	<h3>전화번호:${reserveInfo.phone}</h3>
	<h3>방문 날짜:${reserveInfo.visitday}</h3>
	<h3>티켓 종류:${reserveInfo.tickettype}</h3>
	<h3>수량:${reserveInfo.numppl}</h3>
	<h3>이메일:${reserveInfo.email}</h3>	
	<h4>입력하신 정보가 맞으면 결제 버튼을 눌러주세요.</h4>


</body>
</html>