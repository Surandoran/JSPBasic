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
		선언문
		서블릿(JSP 페이지 안에서)의 멤버변수 혹은 메서드를 선언할 수 있는 영역
		선언문에 선언된 변수를 멤버변수라 함 
		
		톰캣서버 동작 동안에는 유지가 된다. 
		(톰캣서버 stop시 초기화)
		 
		
	 -->
	<!--  ! 로 선언문의 범위 지정 -->
	
	<%!
		//변수 추가
		String hello = "신토보근";
		//매서드 추가
		public String testFunc(){
			System.out.println("선언문테스트");
			return "디그다";
			
		}
	%>
	
	<!-- 
		표현식
	 -->
	 <%=hello %><br>
	 <%=testFunc() %><br>
	 
</body>
</html>