<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>JSTL Example</title>
</head>
<body>
<c:if test="${3>4}">
이 내용은 화면에 나타나지 않습니다.
</c:if>
<c:if test="${param.type eq 'guest'}">
홈페이지 방문을 환영합니다<br></br>
회원가입을 해주세요~~
</c:if>
<c:if test="${param.type eq 'member'}">
회원님 방문을 환영합니다<br></br>
더 나은 서비스로 보답하겠습니다.
</c:if>

<!-- 실행만 했을때는 아무런 결과가 안보인다
주소창에 ?type=guest 또는 ?type=member를 입력해서 결과를 확인한다. -->
</body>
</html>