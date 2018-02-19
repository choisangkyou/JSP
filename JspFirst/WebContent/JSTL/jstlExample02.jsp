<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@page import="bean.Member" %>
 <%@page import="java.util.*" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <% HashMap pref = new HashMap(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP Tag Lib</title>
</head>
<body>
	<c:set var="pref" value="<%=pref %>" />
	<c:set var="favorColor" value="#{pref.color }" />
	
	좋아하는 색:${favorColor }<br>
	
	<c:set target="${pref }" property="color" value="red"/>
	
	설정후 좋아하는 색:${favorColor }<br>
	같음:<%=pref.get("color") %>
	
	<c:remove var="pref" />
	remove후 좋아하는 색:${favorColor }<br>
		같음:<%=pref.get("color") %>
</body>
</html>