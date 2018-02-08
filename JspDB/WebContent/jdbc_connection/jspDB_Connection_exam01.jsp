<%@page import ="java.sql.*" %><%-- jdbc API 임포트 --%>
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
	
	try{
	//[1] JDBC 드라이버 로드
		Class.forName(driverName);
	}catch (ClassNotFoundException e){
		out.println("mysql jdbc driver가 없는데요?");
		e.printStackTrace();
	}
	
	out.println("mysql jdbc Driver를 찾아서 등록 성공!<br>");
	
	//[2]데이타베이스 연결
	conn = DriverManager.getConnection(url, id, pwd);
	out.println("DB연결 성공");
	
	//[3]데이타베이스 연결 해제
	conn.close();
	
	
%>

</body>
</html>