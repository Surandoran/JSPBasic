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
	 	String name = request.getParameter("name");
	
		//request 내장객체에 있는 모든 쿠키를 꺼내서 배열형태로 저장
		Cookie[] cookies = request.getCookies();
		
		if(cookies!=null)
		{
			for(int i=0; i<cookies.length; i++){
				//배열에서 꺼낸 쿠키이름이 파라미터로 전달받은 이름과 같다면
				if(cookies[i].getName().equals(name))
				{
					cookies[i].setMaxAge(0); //쿠키제거
					response.addCookie(cookies[i]); //쿠키갱신
					%>
					<script>
						alert("쿠키삭제완료");
						location.href="ShowCookie.jsp";
					</script>
					<% 
				}
			}
		}
	%>
	<script>
		alert("해당쿠키는 존재하지 않습니다.");
		location.href="ShowCookie.jsp";
	</script>
</body>
</html>