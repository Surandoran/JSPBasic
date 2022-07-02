
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<!-- sessionSave : key와 값-->
<jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application" />
<%@page import="java.util.*" %>

<%
	Set <String> set= sessionSave.slist.keySet();//keySet : 모든 키(id)를 가져옴 //set은 순서없이 중복없이 저장
	Iterator<String> iter = set.iterator();	//특정위치를 기준점으로 잡아서 데이터를 꺼내옴(특정위치 기준으로 다음위치에 데이터가 있는지 확인)
	while(iter.hasNext()){
		String id = iter.next(); //key에 해당하는 value를 꺼냄
		String pw = (String)sessionSave.slist.get(id).getAttribute("PW"); //sessionSave라는 빈객체 | sessionSave.slist.get(id) : 세션객체
		out.println("접속계정명: "+id+"접속계정 패스워드:"+pw+"\n");

	}
%>
</body>
</html>