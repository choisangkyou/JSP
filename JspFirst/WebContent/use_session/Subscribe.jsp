<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"  %>
<%

	String agree = request.getParameter("AGREE");
	String result = null;
	
	if(agree.equals("YES")){//����
		String id = (String)session.getAttribute("ID");
		String password = (String)session.getAttribute("PASSWORD");
		String name = (String)session.getAttribute("NAME");
		PrintWriter writer = null; 
		try{
			String filePath = application.getRealPath("/WEB-INF/"+ id +".txt");
			writer = new PrintWriter(filePath);
			writer.println("���̵�:"+id);
			writer.println("�н�����:"+password);
			writer.println("�̸�:"+name);
			result = "SUCCESS";
			out.println(filePath); 
			
		}catch(IOException e){  result ="FAIL";}
		finally{
			try{
				writer.close();
			}catch(Exception e){}
		}
		
	}else{
		//���
		out.println("��� �ϼ̽��ϴ�.");
		result ="FAIL";
	}
	session.invalidate();
	response.sendRedirect("Result.jsp?RESULT="+ result);
	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���:<%=result %><br>
	
</body>
</html>
