<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<% request.setCharacterEncoding("EUC-KR"); %> 
<% request.setAttribute("name", "갱짱"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html> 
 <head> 
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
 <title>EL</title>
  </head>
   <body> 
   초기화 파라미터 이름 : ${ initParam.testParamName }<br> 
   초기화 파라미터 나이 : ${ initParam.testParamAge +10 } <hr>
    요청 URI : ${ pageContext.request.requestURI } <hr>
     request의 name 속성 : ${ requestScope.name } <hr>
      아이디 : ${ param.id }<br>
      선택한 운동 :	${ paramValues.sports[0] }
           			${ paramValues.sports[1] } 
                	${ paramValues.sports[2] } 
                    ${ paramValues.sports[3] } 
 </body>
 </html>

