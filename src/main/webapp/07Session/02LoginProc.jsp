<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("userid");
		String pw = request.getParameter("pwd");
		
		if(id.equals("abcd")&&pw.equals("1234"))
		{
			session.setAttribute("ID",id);
			session.setAttribute("PW",pw);
			session.setMaxInactiveInterval(120);
			response.sendRedirect("02Main.jsp");
		}
		else
			//원하는 정보가 아니라면 로그인폼으로 리다이렉트가 됨
		{
			response.sendRedirect("02LoginForm.jsp");
		}
	%>
</body>
</html>