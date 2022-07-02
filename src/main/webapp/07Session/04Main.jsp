<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>MAIN</h1>
<hr>
	세션 ID : <%=session.getId() %><br>
	계정 ID : <%=session.getAttribute("ID") %><br>
	세션 유지시간 : <%=session.getMaxInactiveInterval() %><br>
	
	<script>
		stime = new Date();
		max = <%=session.getMaxInactiveInterval() %>;
		//alert("시작시간 : "+stime+"\n MAX : "+max);
		
		
		function timer(){
			//30초에서 1초씩 줄어듦
			max = max -1;
			if(max<0)
			{
				clearInterval(tmp);
				alert("세션종료");
				location.href="04LoginForm.jsp";
			}
			document.getElementById("timer").innerHTML=max;
		}
		//비동기 처리 || setInterval : timer 함수를 1초단위로 계속 실행
		tmp = setInterval(timer,1000);
	</script>
	<p id="timer"></p>
	<a href="04Logout.jsp">로그아웃</a>
</body>
</html>