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
	Cookie[] list = request.getCookies();
	
	for(int i=0; list!=null && i<list.length; i++){
%>
		<p> <%= list[i].getName() %> : <%= list[i].getValue() %> </p>
<%		
	}
%>  
</body>
</html>