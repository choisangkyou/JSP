<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Camp4Season Login</title>

<link rel="stylesheet" type="text/css" href="../common/com.css">
<link rel="stylesheet" type="text/css" href="../common/login.css">
<script src="../common/function.js"></script>

</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">


<div class="innerBox">
	<form action="MemberCheck.jsp" method=POST>

		<input class="inputBox1" type="text" name=ID alt="���̵�" 	value=" ���̵� �Է�" onfocus="this.value=''"	onblur="if(this.value =='') this.value=' ���̵� �Է�';">
		<input class="inputBox2" type="text" name=PASSWORD  alt="��й�ȣ" value=" ��й�ȣ �Է�" onfocus="this.value=''"	onblur="if(this.value =='') this.value=' ��й�ȣ �Է�';">
		<img  class="bottom1" src="images/login_10.gif"  alt="�α���" onClick="toMemberCheck();">
	
	</form>
</div>

</body>
</html>