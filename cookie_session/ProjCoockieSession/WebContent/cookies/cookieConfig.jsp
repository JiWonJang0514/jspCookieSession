<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String language = "korea";
	String cookie = request.getHeader("Cookie");
	
	if(cookie != null){
		Cookie cookies[] = request.getCookies();
		
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("language"))
				language = cookies[i].getValue();
		}
	}
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 쿠키를 이용한 언어 설정</title>
</head>
<body>

<% 	if(language.equals("korea")) { %>
		<p> 안녕하세요 </p>
<%	}else{ %>
		<p> Hello </p>
<%	} %>

	<form action="cookieConfig2.jsp" method="post">
		<p>
			<input type="radio" name="language" value="korea"
<%				if(language.equals("korea")){ %>
					checked  
<%				} %>> 한국어 페이지 보기
				 
			<input type="radio" name="language" value="english"
<%				if(language.equals("english")){ %> 
					checked
<%				}  %>> 영어 페이지 보기 
		</p>
		
		<input type = "submit" value = "설정">
	</form>
</body>
</html>