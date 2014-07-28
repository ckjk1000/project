<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<form class="form-4" style='text-align: center'>
			
		<h1>기차 예약</h1>
		<h2>기차 예약</h2>		
		
		<p>
			<label for="login">ID :</label>
			<input type="text" name="login" placeholder="아이디를 입력하세요." required>
		</p>
		<p>
			<label for="password">PW :</label>
			<input type="password" name='password' placeholder="패스워드를 입력하세요." required> 
		</p>
		<p>
			<input type="submit" name="submit" value="로그인"> 
			<input type="submit" name="submit" value="회원가입">
		</p>  			
	</form>​
</body>
</html>