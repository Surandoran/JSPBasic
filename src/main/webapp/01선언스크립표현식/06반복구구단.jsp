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
	1 문제 
		Scanner로 단수값을 입력받아 해당 구구단을 출력
	2 문제
		2단부터 9단까지 출력
 -->
 
	<%
		java.util.Scanner sc = new java.util.Scanner(System.in); 
		System.out.println("입력 : ");
		int dan=sc.nextInt();
		for(int i=1; i<10; i++){
			out.println(dan+"X"+i+"="+(dan*i)+"<br>");
		}
		
		
	%>
	<hr>
	<h1>구구단을 외자</h1>
	<%
		for(int i = 2; i < 10; i++){
	        for(int j = 1; j < 10; j++){
	           out.println(i + "X" + j + "=" + (i * j) + "<br>");
	        }
	        out.println("<br>");
	     }
	%>
</body>
</html>