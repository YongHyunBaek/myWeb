<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="actiontag.Customer" %>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="customer" class="actiontag.Customer" scope="page"/>
<jsp:setProperty name = "customer" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer �������� </title>
</head>
<body>
	<ul>
		<li>�̸�: <jsp:getProperty name="customer" property="name"/></li>
		<li>�̸���: <jsp:getProperty name="customer" property="email"/></li>
		<li>��ȭ: <jsp:getProperty name="customer" property="phone"/></li>
	</ul>
</body>
</html>