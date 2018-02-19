<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JStl</title>
</head>
<body>
	
	<ul>
		<c:choose>
			<c:when test="${param.flag== '0' }">
				<li>파라미터 flag의 값은 0 입니다.
			</c:when>
			
			<c:when test="${param.flag ==1 }">
				<li> 파라미터 flag 의 값은 1 입니다.
			</c:when>
			
			<c:when test="${param.flag ==2 }">
				<li> 파라미터 flag 의 값은 2 입니다.
			</c:when>
			
			<c:otherwise>
				<li>파라미터flag의 값이 0,1,2중 하나를 입력해 주세요.
			</c:otherwise>
		</c:choose>
	</ul>
	
	
</body>
</html>