<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@page import="bean.Member" %>
 <%@page import="java.util.*" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<% Member member = new Member(); %> 
<c:set target="<%= member %>" property="name" value="aaa" /><!-- member.setName("aaa")과 동일 --> 
member Name:<%= member.getName()%><br>
 
<c:set var="m" value="<%= member %>" /> 
<c:set target="${ m }" property="name" value="bbb" /><!-- member.setName("bbb")과 동일 --> 
target=${m} : ${m.name} <br>

<% Map<String, String> memberMap = new HashMap<String, String>(); %>
 <c:set target="<%= memberMap %>" property="ccc" value="01012345678" /> <!-- memberMap.put("ccc", "01012345678")과 동일 --> 
 memberMap:<%= memberMap.get("ccc") %><br>


</body>
</html>