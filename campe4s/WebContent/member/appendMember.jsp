<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../common/dbcon.jsp" %>
<%@ page import="modal.Member" %>
<%@ page import="modal.MemberDao" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 회원 등록 -->
<% 
request.setCharacterEncoding("EUC-KR"); 

String user_id = request.getParameter("ID");
String user_password = request.getParameter("PASSWORD");
String user_name = request.getParameter("NAME");
String user_email = request.getParameter("EMAIL");
String user_mobile = request.getParameter("MOBILE");
String user_birthday = request.getParameter("BIRTHDAY");

Member member = new Member();
member.setId(user_id);
member.setPassword(user_password);
member.setName(user_name);
member.setEmail(user_email);
member.setMobile(user_mobile);
member.setBirthday(user_birthday);

MemberDao.getInstance().insertMember(member);

%>

</body>
</html>