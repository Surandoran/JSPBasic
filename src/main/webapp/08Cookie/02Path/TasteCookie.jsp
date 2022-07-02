<%--
  Created by IntelliJ IDEA.
  User: 손필욱
  Date: 2022-06-29
  Time: 오후 5:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
  setPath() : 클라이언트의 쿠키를서버의 어느위치에서 받을지 결정
--%>
<%
  Cookie c1 = new Cookie("c1", "Value1");
  c1.setMaxAge(60*60);
  c1.setPath("/");//모든 URL 접근시 전달
  Cookie c2 = new Cookie("C2", "Value2");
  c2.setMaxAge(60*60);
  c2.setPath("./");// 현재 디렉토리에서 접근시 전달
  Cookie c3 = new Cookie("C3", "Value3");
  c3.setMaxAge(60*60);//해당 경로로 요청했을떄만 쿠키 전달
  c3.setPath("/08Cookie/C01Basic/");

  response.addCookie(c1);
  response.addCookie(c2);
  response.addCookie(c3);
%>
</body>
</html>
