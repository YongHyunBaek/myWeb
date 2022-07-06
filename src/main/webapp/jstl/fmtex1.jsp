<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <fmt:setLocale value="en"/>--%>
<%-- 실행시 http://localhost:8080/myWeb/jstl/fmtex1.jsp?id=javaline 까지 써줘야하며
위에 5번줄에 주석 해제할 경우 영문으로 바뀜.  --%>
<fmt:bundle basename="bundle.testBundle">
<fmt:message key="TITLE" var="title"/>
<html>
<head><title>${title}</title></head>
<body>
<fmt:message key="NAME"/>
<br>
<c:if test="${! empty param.id}">
<fmt:message key="MESSAGE">
	<fmt:param value="${param.id}"/>
</fmt:message>
</c:if>
</body>
</html>
</fmt:bundle>