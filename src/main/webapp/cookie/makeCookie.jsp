<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.net.URLEncoder" %>
<% 
	Cookie cookie = new Cookie("name", URLEncoder.encode("현", "UTF-8"));
	response.addCookie(cookie);
%>
<html>
<head><title>쿠키생성</title></head>
<body>
<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"

</body>
</html>