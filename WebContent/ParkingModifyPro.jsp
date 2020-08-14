<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybean.car.ParkingCar" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import ="java.sql.SQLException" %>
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
<body>
<%
request.setCharacterEncoding("utf-8");
Connection conn = null;
PreparedStatement pstmt = null;

String carOwn = request.getParameter("carOwn");
String carVar = request.getParameter("carVar");
String carNum = request.getParameter("carNum");

System.out.println(carOwn + "ParkingModifyPro.jsp");
System.out.println(carVar + "ParkingModifyPro.jsp");
System.out.println(carNum + "ParkingModifyPro.jsp");

Class.forName("com.mysql.cj.jdbc.Driver");

try {
	String jdbcDriver = "jdbc:mysql://localhost/pjr?serverTimezone=Asia/Seoul";
	String dbUser= "root";
	String dbPass="rootpw";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	pstmt = conn.prepareStatement(
			"update Parking set carOwn=?, carVar=?, carNum=? where carOwn=?");
	System.out.println(pstmt);
	System.out.println(pstmt.getClass());
	
	pstmt.setString(1, carOwn);
	pstmt.setString(2, carVar);
	pstmt.setString(3, carNum);
	pstmt.setString(4, carOwn);
	
	System.out.println(pstmt);
	
	pstmt.executeUpdate();
	} finally {
		if(pstmt != null) try{pstmt.close();} catch(SQLException ex) {}
		if(conn != null) try{conn.close();} catch(SQLException ex) {}
	}
%>

<h1 style="background-color:pink;">수정이 완료되었습니다.</h1>
<form action="ParkingJdbc.jsp" method="post">
<button type="submit" class="btn btn-secondary btn-medium" style="background-color:skyblue;">돌아가기</button>
</form>
</body>
</html>