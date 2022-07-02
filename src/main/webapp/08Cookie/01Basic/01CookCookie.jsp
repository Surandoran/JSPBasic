<%--
  Created by IntelliJ IDEA.
  User: 손필욱
  Date: 2022-06-29
  Time: 오후 4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
[쿠키 제약 사항]
문자열 데이터만 가능
4kbyte 이하의 공간을 차지
여러개의 쿠키 설정가능(최대 300개)
도메인당 20개까지 저장 가능
저장한돌르 초과하면 최근에 사용되지 않은 쿠키부터 자동 삭제

--%>


<%
    String cookieName = "mycookie";
    Cookie cookie = new Cookie(cookieName,"쿠키1Value");
    cookie.setValue("퇴근합시다");
    cookie.setMaxAge(30); //쿠키 유지시간
    //-1(기본값): 파일생성은 되지 않으나
    //브라우저가 종료될때까지 쿠키의 정보는 저장된 상태이고
    //브라우저를 닫을 때 쿠키의 정보는 사라진다
    //30초로 설정

    response.addCookie(cookie);
%>
<h1>보키생성 사이트</h1>
<a href="01TasteCookie.jsp">보키확인하러가기</a>
</body>
</html>
