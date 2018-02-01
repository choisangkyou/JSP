<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- jsp 주석 -->
<%-- 클라이언트에 전달되지 않는 JSP주석 --%>
	<%
		int total = 0;
	  	for (int cnt = 1;  cnt <= 100; cnt++)
	  		total += cnt;
	%>
	1부터 100까지 더한 값 :<%=total %>
</body>
</html>