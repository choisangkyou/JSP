<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		2^1 =<%= power(2,1)%><br>
		2^2 =<%= power(2,2)%><br>
		2^3 =<%= power(2,3)%><br>
		2^4 =<%= power(2,4)%><br>
		2^5 =<%= power(2,5)%><br>
</body>
</html>
<%!
	private int power(int base , int exponent){
		int result = 1;
		for (int i = 0 ; i < exponent; i++){
			result *= base;
		}
		return result;
	
	}
%>