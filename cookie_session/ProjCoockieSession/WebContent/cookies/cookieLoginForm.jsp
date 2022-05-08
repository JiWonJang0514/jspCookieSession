<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 쿠키 : 로그인 화면</title>
</head>
<body>
	<h3> 로그인 화면  </h3>
	
	<!-- id=admin, pwd=1234 이면 로그인 성공 -->
	<form action="login.jsp" method="post">
		ID : <input type="text" name="id">
		PW : <input type="password" name="pwd">
		<input type="submit" value="login">
	</form>
</body>
</html>