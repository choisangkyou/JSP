<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	request.setCharacterEncoding("EUC-KR"); 

	String id = request.getParameter("ID");
	String password = request.getParameter("PASSWORD");
	String name = request.getParameter("NAME");
	
	session.setAttribute("ID", id);
	session.setAttribute("PASSWORD",password);
	session.setAttribute("NAME",name);
	
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�� ����</title>
</head>
<body>
	<h3>���</h3>                                   
	<pre>
	---------------------------------------------
	1.ȸ�� ������ �� ����Ʈ�� ��� ���ؼ��� ��� �˴ϴ�.
	2.�� ����Ʈ�� ���� ��� �����ϴ� ȸ���� Ż�� ó�� �մϴ�.
	---------------------------------------------
	</pre>
	<form action=Subscribe.jsp method=post>
		����� ���� �Ͻʴϱ�?<br>
		<input type=radio name=AGREE value=YES>������<br>
		<input type=radio name=AGREE value=NO>�������� ����<br>
		<input type=submit value=Ȯ��>
	</form>
</body>
</html>