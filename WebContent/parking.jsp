<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@ page import="mybean.car.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<jsp:useBean id="parking" class="mybean.car.ParkingBean" scope="application"/>
<jsp:useBean id="carDto" class="mybean.car.CarDto"/>

<%request.setCharacterEncoding("UTF-8"); %>

<jsp:setProperty property="enter" name="parking" param="enter"/>
<jsp:setProperty property="exit" name="parking"/>
<body>
	<h1>주차관리 프로그램</h1>
	<form method="post">
		주차장에 들어온 차 번호: &nbsp;<input type="text" name="enter"/>
		&nbsp;&nbsp;&nbsp;<input type="submit" value="입차"/>
	</form>
	<hr/>
	주차된 차량 목록 :<br><br>
	<table border="1">
		<tr>
			<th>차량번호</th><th>입차시간</th>
		</tr>
	<%
		ArrayList<CarDto>cars = parking.getCarInfo();
		for(int i=0; i<cars.size(); i++) {
			//CarDto dto = cars.get(i);
			//carDto = cars.get(i);
			pageContext.setAttribute("carDto", cars.get(i));
	%>
		<tr>
			<td><jsp:getProperty name="carDto" property="plateNumber"/></td>
			<td><jsp:getProperty name="carDto" property="parkingTime"/></td>
		</tr>
	<%
	}
	%>
	</table>
	<br>
	총 주차대수 : <jsp:getProperty property="counter" name="parking"/>
</body>
</html>