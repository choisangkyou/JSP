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
<title>회원 가입</title>
</head>
<body>
	<h3>약관</h3>                                   
	<pre>
	---------------------------------------------
	1.회원 정보는 웹 사이트의 운영을 위해서만 사용 됩니다.
	2.웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리 합니다.
	---------------------------------------------
	</pre>
	<form action=Subscribe.jsp method=post>
		약관에 동의 하십니까?<br>
		<input type=radio name=AGREE value=YES>동의함<br>
		<input type=radio name=AGREE value=NO>동의하지 않음<br>
		<input type=submit value=확인>
	</form>
</body>
</html>