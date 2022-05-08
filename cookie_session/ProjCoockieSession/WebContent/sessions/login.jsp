<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	if(id.equals("admin") && pwd.equals("1234")){
		session.setAttribute("logOK", id);
		response.sendRedirect("sessionLoginForm.jsp");
	}else{
%>
		<script>
			alert("로그인에 실패하였습니다.");
			history.go(-1);
		</script>
<%
	}		
%>