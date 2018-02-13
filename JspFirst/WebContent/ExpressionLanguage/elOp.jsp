<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
pageContext.setAttribute("name", "페이지네임");
request.setAttribute("name", "리퀘스트네임");
session.setAttribute("name", "세션네임");
application.setAttribute("name", "어플리케이션네임");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EL OP</title>
</head>
<body>
name :${name }<br>
page name: ${pageScope.name }<br>
request name:${requestScope.name }<br>
session name:${sessionScope.name }<br>
application name:${applicationScope.name }<br>

<hr>

<h2>수치연산</h2>
${1+1 }<br>
${2+2}<br>
${3*4 }<br>
${6/2 }<br>
<br>
같은가:${10 eq 10}<br>
작은가:${ 5 lt 10 }<br>
큰가:${ 30 gt 20 }<br>
작거나 같은가:${10 le 10 }<br>
크거나 같은가:${10 ge 10 }<br>

</body>
</html>