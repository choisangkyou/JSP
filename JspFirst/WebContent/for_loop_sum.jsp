<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int total = 0;
		for (int i = 0; i< 100; i++)
			total += i;
	%>
	0~100까지 sum :<%=total %><br>
	
	<%
		for (int i = 101; i <= 200; i ++)
			total += i;
	%>
	101~ 200 까지 합:<%=total %><br>
	
</body>
</html>