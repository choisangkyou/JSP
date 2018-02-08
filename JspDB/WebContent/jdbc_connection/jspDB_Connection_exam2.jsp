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
	ResultSet rs = null;
	
	try{
		String sql_query = "select * from member";
		pstmt = conn.prepareStatement(sql_query);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			no = rs.getString("user_No");
			name = rs.getString("user_Name");
			add = rs.getString("user_Address");
			out.println(no +"\t");
			out.println(name+"\t");
			out.println(add+"\t");
			out.println("<br>");
		}
	}
	catch(SQLException e){	out.println("SQL ����..");}
	
	finally{
		try{
			if(pstmt != null)
				pstmt.close();
			if(rs != null)
				rs.close();
		}catch(SQLException e){out.println("SQL Error.. close()");}
	}
	//[3]����Ÿ���̽� ���� ����
	conn.close();
%>

</body>
</html>