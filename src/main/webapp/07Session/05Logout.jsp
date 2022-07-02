
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>

<jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application" />

<%
	String id=(String)session.getAttribute("ID");
	sessionSave.slist.remove("id"); //HashMap안의 id,session 제거 (로그아웃했을때 해당 아이디의 키와 밸류값 제거)

	session.invalidate(); //세선객체 자체가 제거

	if(id!=null)
	{
%>
<script>
	alert("<%=id %>님 로그아웃!");
	location.href="05LoginForm.jsp";

</script>
<%
	}

%>
</body>
</html>