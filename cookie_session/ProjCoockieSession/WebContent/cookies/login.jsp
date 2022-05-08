<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//id=admin, pwd=1234 이면 로그인 성공, 아니면 로그인 실패로 처리
	if(id.equals("admin") && pwd.equals("1234")){
		Cookie cookie = new Cookie("auth", id);
		cookie.setMaxAge(-1);
		response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
		</head>
		<body>
			<p> <%= id %>님 로그인하셨습니다. </p>
			<a href = "cookieLoginForm.jsp"> 돌아가기 </a>
		</body>
		</html>
<%				
	}else{
%>
		<script>
			alert("로그인에 실패하였습니다.");
			history.go(-1);
		</script>
<%
	}
%>
