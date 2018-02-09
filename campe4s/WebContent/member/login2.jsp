<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Camp4Season Login</title>
<style>
	.menu_links { cursor: pointer; }

	#Table_01 {
	 	float: center;
		margin-left: auto;
		margin-right: auto;
	    background-image: url("images/loginbg.jpg");
	    background-color: #cccccc;
	}
	input{
		margin-left:0px;
		margin-top:0px;
		width:190px;
		height:33px;
	}
</style>

<script>

	function toLocation() {
	   location.href="../main/index.jsp";
	}
	
	function MemberCheck() {
		   location.href="../member/MemberCheck.jsp";
	}
	
</script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!-- ImageReady Slices (login.psd) -->
<table id="Table_01" width="295" height="297" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="5">
			<img class="menu_links" src="images/login_01.gif" width="295" height="50" alt="home" onClick="toLocation()" alt="홈"></td>
	</tr>
	<tr>
		<td colspan="5">
			<img src="images/login_02.gif" width="295" height="49" alt=""></td>
	</tr>
	<tr>
		<td rowspan="6">
			<img src="images/login_03.gif" width="52" height="197" alt=""></td>
		<td class="id" colspan="2" align="center">
			<input type="text" name=ID  maxlength="10" size="21" alt="아이디" value=" 아이디 입력" onfocus="this.value=''" onblur="if(this.value =='') this.value=' 아이디 입력';"></td>
		<td colspan="2" rowspan="4">
			<img src="images/login_05.gif" width="49" height="101" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/login_06.gif" width="194" height="14" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="text" name=PASSWORD  maxlength="10" size="21" alt="비밀번호" value=" 비밀번호 입력" onfocus="this.value=''" onblur="if(this.value =='') this.value=' 비밀번호 입력';"></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/login_08.gif" width="194" height="13" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/login_09.gif" width="1" height="96" alt=""></td>
		<td colspan="2">
			c</td>
		<td rowspan="2">
			<img src="images/login_11.gif" width="48" height="96" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/login_12.gif" width="194" height="58" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="52" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="193" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="48" height="1" alt=""></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
</body>
</html>