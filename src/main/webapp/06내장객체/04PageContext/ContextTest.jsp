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
		pageContext.getOut().print("Hello World<br>");
		//out.print()
		HttpServletResponse res =
		(HttpServletResponse)pageContext.getResponse();
		
		res.sendError(404,"g핳에러ㅔ에러에러에러에러하");
	%>
</body>
</html>