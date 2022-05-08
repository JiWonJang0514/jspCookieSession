<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Cookie cookie = new Cookie("name", "yangyoung");
	cookie.setMaxAge(60*60);
	response.addCookie(cookie);
	%>    

	<p> Cookie 이름 : <%= cookie.getName() %> </p>
	<p> Cookie 값 : <%= cookie.getValue() %> </p>
	<p> Cookie 만료시간 : <%= cookie.getMaxAge() %> </p>
	
	<a href = "cookie2.jsp"> 쿠키 값 불러오기 </a>
</body>
</html>