<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 기본 객체</title>
</head>
<body>
<%
	HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
%>
request 기본 객체와 pageContext.getReuest()의 동일여부:
<%= request == httpRequest %>
<br></br>
pageContext.getOut() 메소드를 사용한 데이터 출력:
<% pageContext.getOut().println("그쪽이 안사장이요?, 너 뉘기야, 누구긴 누구야 빚쟁이지" ); %>

</body>
</html>