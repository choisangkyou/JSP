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
				<li>�Ķ���� flag�� ���� 0 �Դϴ�.
			</c:when>
			
			<c:when test="${param.flag ==1 }">
				<li> �Ķ���� flag �� ���� 1 �Դϴ�.
			</c:when>
			
			<c:when test="${param.flag ==2 }">
				<li> �Ķ���� flag �� ���� 2 �Դϴ�.
			</c:when>
			
			<c:otherwise>
				<li>�Ķ����flag�� ���� 0,1,2�� �ϳ��� �Է��� �ּ���.
			</c:otherwise>
		</c:choose>
	</ul>
	
	
</body>
</html>