<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie1 = new Cookie("id", "guest");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("code", "0001");
	cookie2.setMaxAge(60*60);
	response.addCookie(cookie2);

	Cookie cookie3 = new Cookie("subject", "웹프로그래밍");
	cookie3.setMaxAge(60*60*2);
	response.addCookie(cookie3);
	
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 만료시간 설정</title>
</head>
<body>
	<p> id, code, subject 쿠키 전송 완료 </p>
	<a href = "cookieAge2.jsp"> 쿠키 값 불러오기 </a>
</body>
</html>