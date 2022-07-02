<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 빈객체 생성 -->
	<jsp:useBean id="test1" class="Ch05.SimpleBean" scope="page" />
	
	<!-- 빈객체 속성값 저장  -->
	<jsp:setProperty property="test1" name="msg1" value="MSG1 의 값!! "/>
	
	<!-- 빈객체 속성값 확인  -->
	<jsp:setProperty property="test1" name="msg2" value="MSG2 의 값!! "/>
	
	<!-- 반객체 속성값 확인 -->
	MSG : <jsp:setProperty property="test1" name="msg1"/>
	MSG : <jsp:setProperty property="test2" name="msg2"/>
	
	<%@page import="Ch05.SimpleBean" %>
	<%
		SimpleBean bean = new SimpleBean();
		bean.setMsg1("메시지1");
		bean.setMsg1("메시지2");
	%>
	MSG1 = <%=bean.getMsg1() %><br>
	MSG1 = <%=bean.getMsg2() %><br>
	
</body>
</html>