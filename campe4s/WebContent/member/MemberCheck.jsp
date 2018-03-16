<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import="modal.Member" %>
<%@ page import="modal.MemberDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("EUC-KR"); 
String id = request.getParameter("ID");
String password = request.getParameter("PASSWORD");


boolean memberExist =false;
Member member = MemberDao.getInstance().MemberCheck(id, password);
String u_id =null;
String u_password =null;
String u_name = null;
String u_email = null;
String u_mobile =null;
String u_birthday =null;


RequestDispatcher dispatcher;

//out.println("memberID:"+ member.getId());

if(member.getId() !=null){
	 u_id = member.getId();
	 u_password = member.getPassword();
	 u_name = member.getName();
	 u_email = member.getEmail();
	 u_mobile = member.getMobile();
	 u_birthday = member.getBirthday();

	
}else{
	
	out.println("ID와 비번을 다시한번 확인하세요.");
	dispatcher = request.getRequestDispatcher("login.jsp");
	dispatcher.forward(request, response);	
	//response.sendRedirect("fail.jsp");
}

if(id.equals(u_id) && password.equals(u_password)){
	//out.println("아이디 비번이 일치 합니다.");
	 
	session.setAttribute("ID", u_id);
	session.setAttribute("PASSWORD",u_password);
	session.setAttribute("NAME",u_name);
	
	response.sendRedirect("success.jsp");
}

%>

</body>
</html>