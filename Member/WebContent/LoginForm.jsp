<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>아이디와 패스워드를 입력하세요.ㅣ</h2>
<form action=login.jsp method=post>
	아이디:<input type=text name=ID><input type=submit value=Login><br>
	패스워드:<input type=text name=PASSWORD><input type=reset value=reset><br>
	
	<input onclick="location.href='index.jsp'" type="button" value="홈으로">
	<input onclick="location.href='Register.jsp'" type="button" value="신규등록">
	
</form>
</body>
</html>