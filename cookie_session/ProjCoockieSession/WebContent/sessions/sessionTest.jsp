<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String output;
	if(session.getAttribute("name") != null){
		output = (String)session.getAttribute("name");
	}else{
		output = "세션 값 없음";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 테스트</h2>
	<input type="button" onclick="location.href='sessionSet.jsp'" value="세션값 저장">
	<input type="button" onclick="location.href='sessionDel.jsp'" value="세션값 삭제">
	<input type="button" onclick="location.href='sessionInvalidate.jsp'" value="세션 초기화">
	<h3><%= output %></h3>
</body>
</html>