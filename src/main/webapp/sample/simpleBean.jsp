<%@ page contentType="text/html; charset=utf-8" %>
<%
		request.setCharacterEncoding("utf-8");
		//String message = request.getParameter("message");
%>
<jsp:useBean id="msg" class = "tommy.web.sample.SimpleData"/>
<%-- SimpleData msg = new SimpleData(); --%>
<jsp:setProperty name ="msg" property="message"/>
<%--msg.setMessage(?); --%>
<!-- 기본자료형, String만 빈즈에 사용할 수 있다. -->
<!DOCTYPE html>
<html>
<body>
<h1> 간단한 빈즈 프로그램 결과</h1>
<hr color = "red"></hr><br></br>
<font size="5">
메세지 : <jsp:getProperty name = "msg" property="message"/>
<%--<%message%> --%>
</font>
</body>
</html>