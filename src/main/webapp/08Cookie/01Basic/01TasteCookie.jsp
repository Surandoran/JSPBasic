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
<%
    Cookie[] cookies = request.getCookies();
    if(cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            out.println(cookies[i].getName() + "," + cookies[i].getValue() + "<br>");
        }
    }
%>
</body>
</html>
