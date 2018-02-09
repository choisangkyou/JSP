<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

request.setCharacterEncoding("EUC-KR"); 

String id = request.getParameter("ID");
String password = request.getParameter("PASSWORD");

session.setAttribute("ID", id);
session.setAttribute("PASSWORD",password);



%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>아이디 비번 등록</title>
</head>
<body>

</body>
</html>