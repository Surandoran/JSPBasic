<%@ page import="org.mindrot.bcrypt.BCrypt" %><%--
  Created by IntelliJ IDEA.
  User: 손필욱
  Date: 2022-06-30
  Time: 오전 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="BCrypt" class="org.mindrot.bcrypt.BCrypt" scope="page" />
<%
    String userid = request.getParameter("userid");
    String pwd = request.getParameter("pwd");
    String idchk = request.getParameter("idchk");
    String pwdchk = request.getParameter("pwdchk");

    Cookie c1 = new Cookie("userid",userid);
    Cookie c2 = new Cookie("pwd",pwd);
    Cookie c3 = new Cookie("idchk",idchk);
    Cookie c4 = new Cookie("pwdchk",pwdchk);

    //패스워드 암호화
    pwd = BCrypt.hashpw(pwd, BCrypt.gensalt());
    //세션에 저장
//    session.setAttribute("pwd",pwd);
//    session.setMaxInactiveInterval(60*60);
    System.out.println("PWD : " + pwd);

    response.addCookie(c1);
    response.addCookie(c2);
    response.addCookie(c3);
    response.addCookie(c4);

    response.sendRedirect("Main.jsp");

%>


</body>
</html>
