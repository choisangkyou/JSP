<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%String result = request.getParameter("RESULT"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입 결과</h3>
<%

	if(result.equals("SUCCESS")){
		out.println("가입되었습니다.");
	}else{
		out.println("가입되지 않았습니다.");
	}
%>
</body>
</html>