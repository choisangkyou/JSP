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
<h3>ȸ������ ���</h3>
<%
	if(result.equals("SUCCESS")){
		out.println("���ԵǾ����ϴ�.");
	}else{
		out.println("���Ե��� �ʾҽ��ϴ�.");
	}
%>
</body>
</html>