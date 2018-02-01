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
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	int iNum1 = Integer.parseInt(num1);
	int iNum2 = Integer.parseInt(num2);
	
	request.setAttribute("SUM", iNum1 + iNum2);
	request.setAttribute("DIFF", iNum1 - iNum2);
	request.setAttribute("PROD", iNum1 * iNum2);
	request.setAttribute("QUOT", iNum1 / iNum2);
	
	out.flush();
	//특별한 목적을 위해 보내다.dispatcher..
	RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
	dispatcher.include(request, response);
	

	
	
	%>
	
	
</body>
</html>