<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	덧샘결과:<%=request.getAttribute("SUM") %><br>
	뺄샘결과:<%=request.getAttribute("DIFF") %><br>
	곱샘결과:<%=request.getAttribute("PROD") %><br>
	나눗샘결과:<%=request.getAttribute("QUOT") %><br>
</body>
</html>