<%@page import ="java.sql.*" %><%-- jdbc API ����Ʈ --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String driverName ="com.mysql.jdbc.Driver";
	String url ="jdbc:mysql://localhost:3306/lib";
	String id="root";
	String pwd ="0000";
	Connection conn =null;
	String no,name,add;
		
	try{
	//[1] JDBC ����̹� �ε�
		Class.forName(driverName);
	}catch (ClassNotFoundException e){
		out.println("mysql jdbc driver�� ���µ���?");
		e.printStackTrace();
	}
	
	out.println("mysql jdbc Driver�� ã�Ƽ� ��� ����!<br>");
	
	//[2]����Ÿ���̽� ����
	conn = DriverManager.getConnection(url, id, pwd);
	out.println("DB���� ����");
	
	PreparedStatement pstmt = null;
	int rs=0;
	
	String sql_query = null;
			sql_query = " update member ";
			sql_query += " set user_Address = '���� ���Ǵ��б� ���������(106..)'";
			sql_query += " where user_no = 'dhu008'";
		out.println(sql_query);
		
			
	try{
		
		pstmt = conn.prepareStatement(sql_query);
		rs = pstmt.executeUpdate();
		out.println("excute return:"+ rs);
		
		if(rs>0){
			out.println("Update success!!");
			out.println("<br>");

		}
		
	}
	catch(SQLException e){	
		e.printStackTrace();
		out.println("SQL ����..");
	}finally{
		pstmt.close();
		conn.close();
	}
	

	
	
%>

</body>
</html>