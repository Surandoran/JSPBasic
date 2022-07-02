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
 	for(int i=0; i<10; i++){
 		//System.out.println("hohoho<br>");
 		out.println("hohoho<br>");
 		
 	}

	int a=100;
	if(a%2==0){
		out.println(a+" 는 짝수입니다.<br><hr>");
	}
%>

<!-- 
	1 문제 
		Scanner로 단수값을 입력받아 해당 구구단을 출력
	2 문제
		2단부터 9단까지 출력
 -->
 
	<%
		java.util.Scanner sc = new java.util.Scanner(System.in); 
		int dan=sc.nextInt();
		for(int i=1; i<10; i++){
			out.println(dan+"X"+i+"="+(dan*i)+"<br>");
		}
		
	%>
	
	
	
	
	
	
    
    
    
   
</body>
</html>