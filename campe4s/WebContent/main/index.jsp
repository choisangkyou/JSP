<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="campe4s.foo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Campe4Season</title>

<link rel="stylesheet" type="text/css" href="../common/com.css">
<link rel="stylesheet" type="text/css" href="../common/main.css">
<script src="../common/function.js"></script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">


<table id="mainTable"  width="981" height="649" border="0" cellpadding="0" cellspacing="0">
<div id="counter">
<%
String id = (String)session.getAttribute("ID");
String password = (String)session.getAttribute("PASSWORD");
String name = (String)session.getAttribute("NAME");
%>

<%if (id !=null) {%>
<%=id %>님 반갑습니다.
<%} %>

<!-- page count:-->
<%//=Counter.getCount() %><br>
<a href="member/memberList.jsp">회원목록</a>
</div>


	<tr>
		<td colspan="5">
			<img src="images/main_01.gif" width="980" height="10" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="10" alt=""></td>
	</tr>
	<tr>
		<td rowspan="6">
			<img src="images/main_02.gif" width="14" height="639" alt=""></td>
		<td>
			<img src="images/main_03.gif" width="271" height="48" alt=""></td>
		<td colspan="3" rowspan="2">
			<img src="images/main_04.gif" width="695" height="277" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="48" alt=""></td>
	</tr>
	<tr>
		<td rowspan="5">
			<img src="images/main_05.gif" width="271" height="591" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="229" alt=""></td>
	</tr>
	<tr>
		<td rowspan="4">
			<img src="images/main_06.gif" width="540" height="362" alt=""></td>
		<td>
			<img class="cursor_hand" src="images/main_07.gif" width="90" height="43" alt="로그인"  onclick="toLogin()" ></td>
		<td rowspan="4">
			<img src="images/main_08.gif" width="65" height="362" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="43" alt=""></td>
	</tr>
	<tr>
		<td>
			<img class="cursor_hand" src="images/main_09.gif" width="90" height="39" alt="상품"></td>
		<td>
			<img src="images/spacer.gif" width="1" height="39" alt=""></td>
	</tr>
	<tr>
		<td>
			<img class="cursor_hand" src="images/main_10.gif" width="90" height="47" alt="가입하기"  onclick="toJoin()"></td>
		<td>
			<img src="images/spacer.gif" width="1" height="47" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/main_11.gif" width="90" height="233" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="233" alt=""></td>
	</tr>
</table>

<!-- End ImageReady Slices -->
<input type="button" value="회원목록" onclick="location.href='../member/memberList.jsp'">
</body>
</html>