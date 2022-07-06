<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="actiontag.Customer" %>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="customer" class="actiontag.Customer" scope="page"/>
<jsp:setProperty name = "customer" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer 가입정보 </title>
</head>
<body>
	<ul>
		<li>이름: <jsp:getProperty name="customer" property="name"/></li>
		<li>이메일: <jsp:getProperty name="customer" property="email"/></li>
		<li>전화: <jsp:getProperty name="customer" property="phone"/></li>
	</ul>
</body>
</html>