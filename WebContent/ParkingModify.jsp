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
<title>차량정보 수정</title>
</head>
<body>
<%
	String carOwn = request.getParameter("carOwn");
	System.out.println(carOwn + "ParkingModifyPro.jsp");
	request.setCharacterEncoding("utf-8");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	String carName= null;
	String carVar = null;
	String carNum = null;
	
	try {
		String jdbcDriver = "jdbc:mysql://localhost/pjr?serverTimezone=Asia/Seoul";
		String dbUser= "root";
		String dbPass="rootpw";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		pstmt = conn.prepareStatement("select * from Parking where carOwn=?");
		pstmt.setString(1, carOwn);
		
		rs=pstmt.executeQuery();
		if(rs.next()) {
			carName = rs.getString("carOwn");
			carVar = rs.getString("carVar");
			carNum = rs.getString("carNum");
		}
	} catch(SQLException e) {
		out.println(e.getMessage());
		e.printStackTrace();
	} finally {
		if(pstmt != null) try{pstmt.close();} catch(SQLException e) {}
		if(rs != null) try{rs.close();} catch(SQLException e) {}
		
		if(conn != null) try{conn.close();} catch(SQLException ex) {}
	}
	%>
	
	<form action="<%=request.getContextPath() %>/ParkingModifyPro.jsp" method="post">
		<table border="1">
			<tr>
				<td>
				<div class="input-group">
  				<div class="input-group-prepend">
    			<span class="input-group-text" >차량주인</span>
 				</div>
				<input type="text" name="carOwn" size="20" value ="<%=carOwn %>">
				</div>
				</td>
			</tr>
			<tr>
			<td>
				<div class="input-group">
  				<div class="input-group-prepend">
    			<span class="input-group-text" >차량종류</span>
 				</div>
				<input type="text" name="carVar" size="20" value ="<%=carVar %>">
				</div>
				</td>
			</tr>
			<tr>
			<td>
			<div class="input-group">
  				<div class="input-group-prepend">
    			<span class="input-group-text" >차량번호</span>
 				</div>
				<input type="text" name="carNum" size="20" value ="<%=carNum %>">
				</div>
				</td>
			</tr>
		<tr>
			<td><button type="submit" class="btn btn-secondary btn-medium" style="background-color:skyblue;">수정</button></td>
		</tr>
		</table>
	
	
	</form>
</body>
</html>

