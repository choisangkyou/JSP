<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="b" scope="request" class="bean.Board"/> 

아이디 : <%= b.getId() %><br> 
비밀번호 : <%= b.getPassword() %><br>
 제목 : <%= b.getTitle() %><br> 
 내용 : <%= b.getContent() %><br>



</body>
</html>