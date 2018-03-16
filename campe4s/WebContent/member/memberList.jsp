<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%//@include file="../common/dbcon.jsp" %>
<%@ page import="modal.Member" %>
<%@ page import="modal.MemberDao" %>
<%@ page import="java.util.regex.Pattern"%>
<%@ page import ="java.util.List" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>획원 목록</title>
</head>
<body>
	<table>
		<tr>
			<th> 아이디</th>
			<th> 패스워드</th>
			<th> 이름</th>
		</tr>
	
<%
	request.setCharacterEncoding("EUC-KR");
	Member member  = new Member();
	List<Member> list = MemberDao.getInstance().selectAll();
	
	for(int i=0; i < list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getId() %></td>
			<td><%=list.get(i).getPassword() %></td>
			<td><%=list.get(i).getName() %></td>
		</tr>
		<%
	}
	
%>
</table>
</body>
</html>