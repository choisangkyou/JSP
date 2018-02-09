
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
request.setCharacterEncoding("EUC-KR"); 
%>

path:<%=request.getContextPath() %><br>
local Addr:<%=request.getLocalAddr() %><br>
local Name:<%=request.getLocalName() %><br>
local Port:<%=request.getLocalPort() %><br>
charterEncoding:<%=request.getCharacterEncoding() %><br>

	<%
	String yourname =request.getParameter("YOURNAME");
	%> 
	
	당신의 이름은:<%=yourname %>
</body>
</html>