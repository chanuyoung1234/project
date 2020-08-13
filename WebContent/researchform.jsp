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

<title>Insert title here</title>
</head>
<body>
<h1 style="background-color:powderblue;">설문조사</h1>
<form action="research.jsp" method="post">
<div style="background-color:pink;">
	<table>
<tr>
	<td>
	<div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text">이름</span>
  </div>
  <input type="text" class="form-control" id="name" name="name">
</div>
	</td>
</tr>
		
	<tr>
	<td>
	<div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text">나이</span>
  </div>
  <input type="text" class="form-control" id="age" name="age">
</div>
	</td>
	</tr>
	
	
	<tr>
		<td>
<div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text">거주지</span>
  </div>
  <input type="text" class="form-control" id="settle" name="settle">
</div>
	<br/>
		</td>
	</tr>
	
	<tr>
	<td>
	<div class="input-group mb-3">
 	<div class="input-group-prepend">
  <label class="input-group-text" for="inputGroupSelect01">성별</label>
  </div>
  <select class="custom-select" id="gender" name="gender">
    <option selected>성별을 선택하시오</option>
    <option value="남자" >남자</option>
    <option value="여자" >여자</option>
  </select>
	</div>
		</td>
	</tr>
	
	<tr>
		<td>
	<div class="input-group mb-3">
 	 <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">혈액형</label>
  </div>
  <select class="custom-select" id="Btype" name="Btype">
    <option selected>혈액형을 선택하시오</option>
    <option value="A">A</option>
    <option value="B">B</option>
    <option value="AB">AB</option>
    <option value="O">O</option>
  </select>
</div>
		</td>
	</tr>
	
	<tr>
		<td>
	<div class="input-group mb-3">
 	 <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">최종학력</label>
  	</div>
  	<select class="custom-select" id="school" name="school">
    <option selected>최종학력을 선택하시오</option>
    <option value="고졸">고졸</option>
    <option value="대재">대재</option>
    <option value="대졸">대졸</option>
    <option value="해당사항없음">해당사항없음</option>
  	</select>
	</div>
		<br>
		</td>
	</tr>
	
	<tr>
		<td>좋아하는 음식 : &nbsp;
		<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="food" id="food" value="한식">
  	<label class="form-check-label" for="inlineRadio1">한식</label>
	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="food" id="food" value="양식">
  	<label class="form-check-label" for="inlineRadio2">양식</label>
	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="food" id="food" value="중식">
  	<label class="form-check-label" for="inlineRadio3">중식</label>
  	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="food" id="food" value="일식">
  	<label class="form-check-label" for="inlineRadio3">일식</label>
  	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="food" id="food" value="기타">
  	<label class="form-check-label" for="inlineRadio3">기타</label>
  	</div>
		<br>
		</td>
	</tr>
	
	<tr>
		<td>좋아하는 구기종목 : &nbsp;
		<div class="form-check form-check-inline">
 	 <input class="form-check-input" type="radio" name="sports" id="sports" value="축구">
  	<label class="form-check-label" for="inlineRadio1">축구</label>
	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="sports" id="sports" value="야구">
  	<label class="form-check-label" for="inlineRadio2">야구</label>
	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="sports" id="sports" value="농구">
  	<label class="form-check-label" for="inlineRadio3">농구</label>
  	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="sports" id="sports" value="배구">
  	<label class="form-check-label" for="inlineRadio3">배구</label>
  	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="sports" id="sports" value="관심없음">
  	<label class="form-check-label" for="inlineRadio3">관심없음</label>
  	</div>
		<br>
		</td>
	</tr>
	
	<tr>
		<td>좋아하는 계절 : &nbsp;
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="season" id="season" value="봄">
  	<label class="form-check-label" for="inlineRadio1">봄</label>
	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="season" id="season" value="여름">
  	<label class="form-check-label" for="inlineRadio2">여름</label>
	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="season" id="season" value="가을">
  	<label class="form-check-label" for="inlineRadio3">가을</label>
  	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="season" id="season" value="겨울">
  	<label class="form-check-label" for="inlineRadio3">겨울</label>
  	</div>
		<br>				
		</td>
	</tr>
	
	<tr>
		<td>좋아하는 TV프로그램 : &nbsp;
		<div class="form-check form-check-inline">
 	 <input class="form-check-input" type="radio" name="TV" id="TV" value="예능">
  	<label class="form-check-label" for="inlineRadio1">예능</label>
	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="TV" id="TV" value="스포츠">
  	<label class="form-check-label" for="inlineRadio2">스포츠</label>
	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="TV" id="TV" value="다큐">
  	<label class="form-check-label" for="inlineRadio3">다큐</label>
  	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="TV" id="TV" value="드라마">
  	<label class="form-check-label" for="inlineRadio3">드라마</label>
  	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="TV" id="TV" value="기타">
  	<label class="form-check-label" for="inlineRadio3">기타</label>
  	</div>
		</td>
	</tr>
	
	<tr>
		<td>좋아하는 여행지 : &nbsp;
		<div class="form-check form-check-inline">
 	 <input class="form-check-input" type="radio" name="travel" id="travel" value="산">
  	<label class="form-check-label" for="inlineRadio1">산</label>
	</div>
	<div class="form-check form-check-inline">
  	<input class="form-check-input" type="radio" name="travel" id="travel" value="바다">
  	<label class="form-check-label" for="inlineRadio2">바다</label>
	</div>
		</td>
	</tr>
	
	<tr>
		<td><button type="submit" class="btn btn-secondary btn-lg">전송</button></td>
	</tr>
	</table>
	</div>
</form>
</body>
</html>