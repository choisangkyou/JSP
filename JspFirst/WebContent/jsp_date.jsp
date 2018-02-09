<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.GregorianCalendar" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	GregorianCalendar now =  new GregorianCalendar();
	String date = String.format("%TF", now);
	String time = String.format("%TT",now);
	
%>	
오늘의 날짜:<%=date %><br>
현재의 시작:<%=time %>
</body>
</html>