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

		<input class="inputBox1" type="text" name=ID alt="아이디" 	value=" 아이디 입력" onfocus="this.value=''"	onblur="if(this.value =='') this.value=' 아이디 입력';">
		<input class="inputBox2" type="text" name=PASSWORD  alt="비밀번호" value=" 비밀번호 입력" onfocus="this.value=''"	onblur="if(this.value =='') this.value=' 비밀번호 입력';">
		<img  class="bottom1" src="images/login_10.gif"  alt="로그인" onClick="toMemberCheck();">
	
	</form>
</div>

</body>
</html>