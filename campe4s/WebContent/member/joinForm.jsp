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
	<h1><!-- �۾��� ��--></h1>
	<p><!--  �⺻���� �Է����Դϴ�.--></p>


	<label>ID
	<span class="small">(���ڿ���ȥ��)</span>
	</label>
	<input type="text" name="ID" id="id" /><a href="IdCheck.jsp" class="checkbtn">Ȯ��</a><!-- ID üũ ��ƾ �߰�. -->
	
	<label>Password
	<span class="small">�н����� 6�� �̻�</span>
	</label>
	<input type="password" name="PASSWORD" id="password" />
			
	<label>Name
	<span class="small">�̸� �Է�</span>
	</label>
	<input type="text" name="NAME" id="name" />
	
	<label>Email
	<span class="small">�̸����ּ�</span>
	</label>
	<input type="text" name="EMAIL" id="email" />
	
	<label>Mobile
	<span class="small">�޴��� ��ȣ</span>
	</label>
	<input type="text" name="MOBILE" id="mobile" />
	
	<button type="submit">�����ϱ�</button>
	<div class="spacer"></div>
	
	</form>
</div>


</body>
</html>