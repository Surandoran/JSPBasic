<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션정보확인</h1>
	<hr>
	<%	
		String id=(String)session.getAttribute("ID");
		String pw=(String)session.getAttribute("PW");
		/* 세션객체에 부여된 ID 가져오기 */
		String SID=session.getId();
		int intervalTime=session.getMaxInactiveInterval();
	%>
	
	세션 ID : <%=SID %><br>
	계졍 ID : <%=id %><br>
	계졍 PW : <%=pw %><br>
	세션 유지 시간 : <%=intervalTime %><br>
</body>
</html>