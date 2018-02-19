<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@page import ="java.util.HashMap" %>
<%
	String[] sports = {"축구","야구","농구","골프","수영","볼링"};

	HashMap map = new HashMap();
	map.put("name", "Choi");
	map.put("age", "23");
	map.put("tel","010-2345-3323");
	map.put("date", new java.util.Date());
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL: forEach</title>
</head>
<body>
	<h2>1~100까지 홀수의 합:
	<c:set var="sum" value="0"/>
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum"	value="${sum+i }"/>
	</c:forEach>
	${sum }</h2>
	
</body>
</html>