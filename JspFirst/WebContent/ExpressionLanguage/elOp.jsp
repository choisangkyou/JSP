<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
pageContext.setAttribute("name", "����������");
request.setAttribute("name", "������Ʈ����");
session.setAttribute("name", "���ǳ���");
application.setAttribute("name", "���ø����̼ǳ���");

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

<h2>��ġ����</h2>
${1+1 }<br>
${2+2}<br>
${3*4 }<br>
${6/2 }<br>
<br>
������:${10 eq 10}<br>
������:${ 5 lt 10 }<br>
ū��:${ 30 gt 20 }<br>
�۰ų� ������:${10 le 10 }<br>
ũ�ų� ������:${10 ge 10 }<br>

</body>
</html>