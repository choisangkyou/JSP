<%@page import ="java.sql.*" %>
<%
	String driverName ="com.mysql.jdbc.Driver";
	String url ="jdbc:mysql://localhost:3306/campe4s";
	String id="root";
	String pwd ="0000";
		
	try{
	//[1] JDBC 드라이버 로드
		Class.forName(driverName);
	}catch (ClassNotFoundException e){
		out.println("mysql jdbc driver can't loading..");
		e.printStackTrace();
	}

%>
