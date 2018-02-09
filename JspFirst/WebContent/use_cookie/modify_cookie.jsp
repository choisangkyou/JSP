<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	response.addCookie(new Cookie("AGE","17"));
	out.flush();
	
	RequestDispatcher dispatcher = 
			request.getRequestDispatcher("get_cookies.jsp");
	dispatcher.include(request, response);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	AGE 쿠키에 새로운 값이 저장 되었습니다.
</body>
</html>