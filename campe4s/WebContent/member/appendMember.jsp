<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%//@include file="../common/dbcon.jsp" %>
<%@ page import="modal.Member" %>
<%@ page import="modal.MemberDao" %>
<%@ page import="java.util.regex.Pattern"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ȸ�� ��� -->
<% 
request.setCharacterEncoding("EUC-KR"); 

String user_id = request.getParameter("ID");
String user_password = request.getParameter("PASSWORD");
String user_name = request.getParameter("NAME");
String user_email = request.getParameter("EMAIL");
String user_mobile = request.getParameter("MOBILE");
String user_birthday = request.getParameter("BIRTHDAY");

/* //String regex = "\\w+@w+.w+(w+.w+)?";
//String regex = "^[_a-zA-Z0-9-\\.]+@[\\.a-zA-Z0-9-]+\\.[a-zA-Z]+$";

boolean  result = regex.matches(user_email);

if (result)
	out.println("���� ��ġ");
else
	out.println("���Ŀ� ���� �ʽ��ϴ�.");
  */
boolean memberExist =false;
RequestDispatcher dispatcher;


if((!user_id.equals("")) && (!user_password.equals(""))){
	Member member = new Member();
	member.setId(user_id);
	member.setPassword(user_password);
	member.setName(user_name);
	member.setEmail(user_email);
	member.setMobile(user_mobile);
	member.setBirthday(user_birthday);
	
	//out.println("id:"+ member.getId());
	
	
	memberExist = MemberDao.getInstance().getMemberExist(member);
	
	if(memberExist ==false){
		if(MemberDao.getInstance().insertMember(member)){
			session.setAttribute("ID", user_id);
			session.setAttribute("PASSWORD",user_password);
			session.setAttribute("NAME",user_name);
			response.sendRedirect("success.jsp");
			
		}else{
			%>
			<script>alert('��Ͽ� �����߽��ϴ�.')</script>
			<%
			//out.println("��Ͽ� �����߽��ϴ�.");
			dispatcher = request.getRequestDispatcher("joinForm.jsp");
			dispatcher.include(request, response);	
		}
	}else{
		%>
		<script>alert('��ϵ� ����� �����մϴ�.')</script>
		<%
		//out.println(member.getId()+":��ϵ� ����� �����մϴ�.");
		dispatcher = request.getRequestDispatcher("joinForm.jsp");
		dispatcher.include(request, response);		
	}

}else{
	%>
	<script>alert('ID�ͺ���� Ȯ���ϼ���.')</script>
	<%
	//out.println("ID�� ����� �Է��ϼ���.");
	dispatcher = request.getRequestDispatcher("joinForm.jsp");
	dispatcher.include(request, response);		
}


%>

</body>
</html>