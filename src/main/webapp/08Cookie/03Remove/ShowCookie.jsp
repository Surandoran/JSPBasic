<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키확인</h1>
	<%	//request 내장객체에 있는 모든 쿠키를 꺼내서 배열형태로 저장
		Cookie[] cookies = request.getCookies();
		if(cookies!=null)//배열안에 쿠키의 값이 null이 아니라면 
		{
			for(int i=0; i<cookies.length; i++){
				String name = cookies[i].getName(); //배열 안 쿠키이름 get
				String value = cookies[i].getValue(); //배열 안 쿠키 값 get
				out.println("name : "+ name + " value : "+ value+"<br>");
			}
		}
	%>
	<!-- name -> parameter 매개변수로 전달  -->
	<a href="RemoveCookie.jsp?name=c1">C1쿠키삭제</a>&nbsp 
	<a href="RemoveCookie.jsp?name=c2">C2쿠키삭제</a>
	</body>
</html>