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
ȸ�� �߰�:${el.setMember("GZz","22") }<br>
ȸ�� ����: ${el.getMember("GZz")}<br>
������ ��:${el.sumNumber(2,3) }<br>

</body>
</html>