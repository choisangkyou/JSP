<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Join Member Form</title>
<link rel="stylesheet" type="text/css" href="../common/joinform.css">
</head>
<body>

<div id="stylized" class="myform">
<br><br>
	<form id="form" name="form" action="appendMember.jsp" method="post">
	<h1><!-- 글쓰기 폼--></h1>
	<p><!--  기본적인 입력폼입니다.--></p>


	<label>ID
	<span class="small">(숫자영문혼합)</span>
	</label>
	<input type="text" name="ID" id="id" /><a href="IdCheck.jsp" class="checkbtn">확인</a><!-- ID 체크 루틴 추가. -->
	
	<label>Password
	<span class="small">패스워드 6자 이상</span>
	</label>
	<input type="password" name="PASSWORD" id="password" />
			
	<label>Name
	<span class="small">이름 입력</span>
	</label>
	<input type="text" name="NAME" id="name" />
	
	<label>Email
	<span class="small">이메일주소</span>
	</label>
	<input type="text" name="EMAIL" id="email" />
	
	<label>Mobile
	<span class="small">휴대폰 번호</span>
	</label>
	<input type="text" name="MOBILE" id="mobile" />
	
	<button type="submit">가입하기</button>
	<div class="spacer"></div>
	
	</form>
</div>


</body>
</html>