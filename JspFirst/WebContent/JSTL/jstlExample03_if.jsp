<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@page import="bean.Member" %>
 <%@page import="java.util.*" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JStl</title>
</head>
<body>
	<c:if test="true">
		항상 실행된다.<br>
	</c:if>
	
	<c:if test="false">
		항상 실행되지 않는다<br>
	</c:if>
	
	<c:if test="${param.name =='choi' }">
		EL의 결과값이 true 일때 실행된다.<br>
		name의 파라미터값:${param.name }<br><!--  form 전송후 실행. -->
	</c:if>
	
	<% Boolean flag = true; %>
	<c:if test="<%=flag %>">
		표현식 결과값이 true 인 경우 실행된다.<br>
	</c:if>
	
	
</body>
</html>