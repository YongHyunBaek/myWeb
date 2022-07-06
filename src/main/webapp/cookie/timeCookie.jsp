<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("second", "10second");
	cookie.setMaxAge(10); //60초(1분), 예제는 1분이지만 빠른 확인을위해10초로 변경
	response.addCookie(cookie);
%>
<html>
<head><title>쿠키유효시간설정</title></head>
<body>
유효시간이 10초인 second 쿠키 생성.
</body>
</html>