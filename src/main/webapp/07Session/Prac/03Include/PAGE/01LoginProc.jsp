<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
		1. 입력값 검증(ID와 PW가 abcd , 1234 일치한지 확인)
		2. 세션객체 값 저장(ID : abcd PW : 1234)
		3. 세션유지 시간 지정(30초)
		4. 01Main.jsp로 이동(로그인 아이콘 -> 나의 정보 아이콘으로 변경)
		5. 30초 동안 아무작업을 하지 않으면 자동 로그아웃 처리(세션제거 후 01Index.jsp이동)
	 -->
	 
	 	<%
			String id = request.getParameter("userid");
			String pw = request.getParameter("pwd");
			
			//입력값 검증
			if(id.equals("abcd")&&pw.equals("1234"))
			{
				session.setAttribute("ID",id);
				session.setAttribute("PW",pw);
				//30초가 지나면 기존의 세션 객체는 제거 -> 세션ID가 변경
				session.setMaxInactiveInterval(30);
				response.sendRedirect("01Main.jsp");
			}else{
				response.sendRedirect("01Index.jsp");
			}
		
	%>
</body>
</html>