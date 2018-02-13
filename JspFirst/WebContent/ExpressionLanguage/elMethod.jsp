<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="el.ELMethod"%>;
<%
	ELMethod elMethod = new ELMethod();
	request.setAttribute("el", elMethod);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EL Method Test</title>
</head>
<body>
info:${el.getInfo() }<br>
회원 추가:${el.setMember("GZz","22") }<br>
회원 정보: ${el.getMember("GZz")}<br>
정수의 합:${el.sumNumber(2,3) }<br>

</body>
</html>