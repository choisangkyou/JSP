<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="el" uri="/WEB-INF/tlds/el-functions.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EL Method Test</title>
</head>
<body>

info:${el:elInfo() }<br>
ȸ�� �߰�:${el:elSet("GAz","19") }<br>
ȸ�� ����: ${el:elGet("GAz")}<br>

<%-- 
������ ��: ${el:elSum(7,7)}<br>
--%>
</body>
</html>