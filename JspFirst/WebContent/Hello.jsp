<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- jsp �ּ� -->
<%-- Ŭ���̾�Ʈ�� ���޵��� �ʴ� JSP�ּ� --%>
	<%
		int total = 0;
	  	for (int cnt = 1;  cnt <= 100; cnt++)
	  		total += cnt;
	%>
	1���� 100���� ���� �� :<%=total %>
	<%-- JSP �ּ�
	/* java �ּ�*/
	// �ּ�

	--%>
</body>
</html>