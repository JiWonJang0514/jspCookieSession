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
	String id = (String)session.getAttribute("logOK");

	if(id != null){
%>
		<%= id %>님 로그인 상태입니다. <br>
 		<a href = "logout.jsp"> 로그아웃 </a>
<%				
	}else{
%>
		<h3> 로그인 화면  </h3>

 		<form action="login.jsp" method="post"> 
			ID : <input type="text" name="id"> 
			PW : <input type="password" name="pwd"> 
			<input type="submit" value="로그인">
		</form>
		<br>
<%
	}
%>
</body>
</html>