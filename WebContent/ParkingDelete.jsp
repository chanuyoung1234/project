<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybean.car.ParkingCar" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.PreparedStatement" %>
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
<title>삭제</title>
</head>
<body>
<%
String carOwn = request.getParameter("carOwn");
System.out.println(carOwn + "ParkingJdbc.jsp");
request.setCharacterEncoding("utf-8");
Connection conn = null;
PreparedStatement pstmt = null;
Class.forName("com.mysql.cj.jdbc.Driver");
try {
	String jdbcDriver = "jdbc:mysql://localhost/pjr?serverTimezone=Asia/Seoul";
	String dbUser= "root";
	String dbPass="rootpw";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	pstmt = conn.prepareStatement(
			"delete from Parking where carOwn=?");
	pstmt.setString(1, carOwn);
	pstmt.executeUpdate();
} finally {
	if(pstmt != null) try{pstmt.close();} catch(SQLException ex) {}
	if(conn != null) try{conn.close();} catch(SQLException ex) {}
}
%>
<h1 style="background-color:pink;">삭제가 완료되었습니다.</h1><br>
<form action="ParkingJdbc.jsp" method="post">
<button type="submit" class="btn btn-secondary btn-medium" style="background-color:skyblue;">돌아가기</button>
</form>

</body>
</html>