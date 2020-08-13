<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<title>설문 조사 결과</title>
<style type = "text/css">
b {
	font-size=18pt;
}
</style>
</head>
<body>
<div style="background-color:yellow;">
	<h2>설문 조사 결과</h2>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	out.println("이름:<b>"+name+"</b><br>");
	
	String age = request.getParameter("age");
	out.println("나이:<b>"+age+"</b><br>");
	
	String settle= request.getParameter("settle");
	out.println("거주지:<b>"+settle+"</b><br>");
	
	String gender =request.getParameter("gender");
	out.println("성별:");
	if(gender.equals("남자")) {
		out.println("<b>남자</b><br>");
	} else {
		out.println("<b>여자</b><br>");
	}
	
	String Btype = request.getParameter("Btype");
	out.println("혈액형:");
	if(Btype.equals("A")) {
		out.println("<b>A형</b><br>");
	} else if(Btype.equals("B")) {
		out.println("<b>B형</b><br>");
	} else if(Btype.equals("AB")) {
		out.println("<b>AB형</b><br>");
	} else {
		out.println("<b>O형</b><br>");
	}
	
	String school = request.getParameter("school");
	out.println("학력은 ");
	if(school.equals("고졸")) {
		out.println("<b>고졸</b><br>");
	} else if(school.equals("대재")) {
		out.println("<b>대재</b><br>");
	} else if(school.equals("대졸")) {
		out.println("<b>대졸</b><br>");
	} else {
		out.println("<b>해당사항없음</b><br>");
	} 
	
	
	String food = request.getParameter("food");
	out.println("당신이 좋아하는 음식은 ");
	if(food.equals("한식")) {
		out.println("<b>한식</b>입니다.<br>");	
	} else if(food.equals("양식")) {
		out.println("<b>양식</b>입니다.<br>");
	} else if(food.equals("중식")) {
		out.println("<b>중식</b>입니다.<br>");
	} else if(food.equals("일식")){
		out.println("<b>일식</b>입니다.<br>");
	} else {
		out.println("<b>기타</b>입니다.<br>");
	}
		
		
		String sports = request.getParameter("sports");
		out.println("당신이 좋아하는 구기종목은 ");
		if(sports.equals("축구")) {
			out.println("<b>축구</b>입니다.<br>");
		} else if(sports.equals("야구")) {
			out.println("<b>야구</b>입니다.<br>");
		} else if(sports.equals("농구")) {
			out.println("<b>농구</b>입니다.<br>");
		} else if(sports.equals("배구")){
			out.println("<b>배구</b>입니다.<br>");
		} else {
			out.println("<b>관심없음</b>입니다.<br>");
		}
		
	
		String season = request.getParameter("season");
		out.println("당신이 좋아하는 계절은 ");
		if(season.equals("봄")) {
			out.println("<b>봄</b>입니다.<br>");
		} else if(season.equals("여름")) {
			out.println("<b>여름</b>입니다.<br>");
		} else if(season.equals("가을")) {
			out.println("<b>가을</b>입니다.<br>");
		} else {
			out.println("<b>겨울</b>입니다.<br>");
		}
	
		String TV = request.getParameter("TV");
		out.println("당신이 좋아하는 TV프로그램은 ");
		if(TV.equals("예능")) {
			out.println("<b>예능</b>입니다.<br>");
		} else if(TV.equals("스포츠")) {
			out.println("<b>스포츠</b>입니다.<br>");
		} else if(TV.equals("다큐")) {
			out.println("<b>다큐</b>입니다.<br>");
		} else if(TV.equals("드라마")) {
			out.println("<b>드라마</b>입니다.<br>");
		} else {
			out.println("<b>기타</b>입니다.<br>");
		}
		
		String travel = request.getParameter("travel");
		out.println("당신이 좋아하는 여행지는 ");
		if(travel.equals("산")) {
			out.println("<b>산</b>입니다.<br>");
		} else {
			out.println("<b>바다</b>입니다.<br>");
		}
	%>
	<br/>
	<b><a href="javascript:history.go(-1)">다시</a></b>
	</div>
</body>
</html>