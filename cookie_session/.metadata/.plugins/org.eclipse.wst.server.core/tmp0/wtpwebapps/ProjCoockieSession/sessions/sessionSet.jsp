<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% session.setAttribute("name", "session Test!!!"); %>

<script>
	location.href = "sessionTest.jsp";
</script>