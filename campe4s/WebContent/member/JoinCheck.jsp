<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../common/dbcon.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ȸ�� ���� üũ -->
<% 
request.setCharacterEncoding("EUC-KR"); 

String user_id = request.getParameter("ID");
String user_password = request.getParameter("PASSWORD");
String user_name = request.getParameter("NAME");
String user_email = request.getParameter("EMAIL");
String user_mobile = request.getParameter("MOBILE");

Connection conn =null;
PreparedStatement ps = null;
ResultSet rs= null;

//[2]����Ÿ���̽� ����
conn = DriverManager.getConnection(url, id, pwd);
//out.println("DB���� ����");
String sql_join ="select count(*) as cnt from member where id=?";
String sql_join2 ="insert into member values(?,?,?,?,?,?)";

out.println(user_name);
out.println(sql_join);


ps = conn.prepareStatement(sql_join);
ps.setString(1, user_id);
rs = ps.executeQuery();

int exist =0; //id check

while(rs.next()){
	 exist = rs.getInt(1);
}

if(exist > 0){
	out.println("�̹� �����ϴ� ���̵� �Դϴ�.");
	return;
}else{ //���� ��ƾ..
	ps = null;
	rs =null;
	ps = conn.prepareStatement(sql_join2);
	ps.setString(1, user_id);
	ps.setString(2,user_password);
	ps.setString(3,user_name);
	ps.setString(4,user_mobile);
	ps.setString(5,user_email);
	ps.setString(6,null);
	ps.executeUpdate();
	
	out.println("���ԵǾ����ϴ�.");
}

ps.close();
conn.close();


%>

</body>
</html>