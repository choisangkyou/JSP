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
		�׻� ����ȴ�.<br>
	</c:if>
	
	<c:if test="false">
		�׻� ������� �ʴ´�<br>
	</c:if>
	
	<c:if test="${param.name =='choi' }">
		EL�� ������� true �϶� ����ȴ�.<br>
		name�� �Ķ���Ͱ�:${param.name }<br><!--  form ������ ����. -->
	</c:if>
	
	<% Boolean flag = true; %>
	<c:if test="<%=flag %>">
		ǥ���� ������� true �� ��� ����ȴ�.<br>
	</c:if>
	
	
</body>
</html>