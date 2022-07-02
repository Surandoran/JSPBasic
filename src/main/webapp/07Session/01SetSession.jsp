<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션객체에 값넣기</h1>
	
	<%
	//세션 객체 안에 id/pw 저장
	//응답 받은 세션 ID로 세션 객체에 접근
		String id = "abcd";
		String pw = "1234";
		
		session.setAttribute("ID", id);
		session.setAttribute("PW", pw);
				//세션정보 유지시간(초단위) : 유지시간 이후의 정보는 사라짐 ->id,pw set에서 사라짐
		session.setMaxInactiveInterval(20);
	%>
	
	<a href="01SessionInfo.jsp">세션정보확인</a>
</body>
</html>