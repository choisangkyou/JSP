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
	String sql_query = "insert into member values(?,?,?,?,?,?)";
	
	try{
		
		pstmt = conn.prepareStatement(sql_query);
		pstmt.setString(1,"dhu08");
		pstmt.setString(2, "���̵��");
		pstmt.setString(3,"��� ��� ���Ǵ� ��������� 106ȣ");
		pstmt.setString(4, "010-4848-6969");
		pstmt.setString(5,"054");
		pstmt.setString(6,"0");
		
		
		rs = pstmt.executeUpdate();
		if(rs != -1){
			out.println("insert success!!");
		}
		
	}
	catch(SQLException e){	
		e.printStackTrace();
		out.println("SQL ����..");
		}
	
	finally{
		try{
			if(pstmt != null)
				pstmt.close();
		}catch(SQLException e){out.println("SQL Error.. close()");}
	}
	//[3]����Ÿ���̽� ���� ����
	conn.close();
	
	
%>

</body>
</html>