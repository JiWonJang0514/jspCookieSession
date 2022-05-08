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
	String str = request.getContextPath();
	out.print(str + "<br>");


	

	if(id != null){
%>
		<%= id %>님 로그인 상태입니다. <br>
 		<a href= "<%= request.getContextPath()%>/sessionLogout"> 로그아웃 </a>
<%				
	}else{
%>

		<h3> 로그인 화면  </h3>

		<form action= "<%= request.getContextPath()%>/sessionLogin" method="post">
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