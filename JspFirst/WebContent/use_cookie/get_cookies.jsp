<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% Cookie[] cookies = request.getCookies(); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
	<body>
	
	�̸�:<%= getCookieValue(cookies,"NAME")%><BR>
	����:<%= getCookieValue(cookies,"GENDER")%><BR>
	����:<%= getCookieValue(cookies,"AGE")%><BR>

<%!
	private String getCookieValue(Cookie[] cookies, String name){
		String value = null;
		if(cookies == null) return null;
		
		for(Cookie cookie : cookies){
			if(cookie.getName().equals(name)){
				return cookie.getValue();
			}
		}
		return null;
	
	}

%>

</body>
</html>