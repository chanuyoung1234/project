<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"%>
<%@ page import="jdbc.connection.ConnectionProvider" %> 
<%@ page import="mybean.car.ParkingCar" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
 Connection conn = null;
 PreparedStatement pstmt = null;
 
 String jdbc_driver = "com.mysql.jdbc.Driver";
 String jdbc_url = "jdbc:mysql://localhost/pjr?user=root&password=rootpw&serverTimezone=Asia/Seoul";

 try{
     Class.forName(jdbc_driver);
     conn = DriverManager.getConnection(jdbc_url);
     
     String sql = "insert into Parking (carOwn, carVar, carNum) values(?,?,?)";
     pstmt = conn.prepareStatement(sql);
     pstmt.setString(1, request.getParameter("carOwn"));
     pstmt.setString(2, request.getParameter("carVar"));
     pstmt.setString(3, request.getParameter("carNum"));
     //pstmt.setDate(4, Date.valueOf(request.getParameter("regdate")));
     
     if(!request.getParameter("carOwn").equals(" ")){

       	pstmt.executeUpdate();
         
     }
 }	catch(Exception e){
	 	e.printStackTrace();
     	System.out.println(e);
 }
%>

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




<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>주차장 입차시간 sql과 연동</title>
</head>
<body>
<h1 style="background-color:pink;" >아파트 주차장 시스템</h1>
<hr>

<form name="Parking" method="post">
	차량주인 : &nbsp; <input type="text" name="carOwn" style="background-color:lightgray;">&nbsp; &nbsp;
	차량종류 : &nbsp; <input type="text" name="carVar" style="background-color:lightgray;">&nbsp; &nbsp;
	차량번호 : &nbsp; <input type="text" name="carNum" style="background-color:lightgray;">&nbsp; &nbsp;
	<button type="submit" class="btn btn-secondary btn-small" style="background-color:skyblue;">등록</button>
	<br>	
</form>
<hr>


<h3 style="background-color:yellow;">세입자 주차차량정보</h3><p>

<%
       try{
           String sql = "select * from Parking";
            
           pstmt = conn.prepareStatement(sql);
            
           ResultSet rs = pstmt.executeQuery();
            
           int i =1;
            
           while(rs.next()){
               out.println(i + " : " + rs.getString(1) + "/ "
               + rs.getString(2) + "/ " 
               + rs.getString(3) + "/ " 
               + rs.getDate(4));
                i++;
                out.print("<a href='ParkingModify.jsp?carOwn=" + rs.getString("carOwn") + "'>수정</a>" + " ");
                out.print("<a href='ParkingDelete.jsp?carOwn=" + rs.getString("carOwn") + "'>삭제</a>"  + "<br>");
                
           }
            rs.close();
            pstmt.close();
            conn.close();
        } catch(Exception e){
            System.out.println(e);
        }
			
        %>
        
        </p>
    </body>
</html>