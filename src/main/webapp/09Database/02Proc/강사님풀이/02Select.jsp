<%--
  Created by IntelliJ IDEA.
  User: 손필욱
  Date: 2022-07-01
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

<%@page import="Ch09.*,java.util.*" %>
<%@ page import="java.util.ArrayList" %>

<%
  BookDTO search = new BookDTO();
  search.setBookcode(99);
  search.setBookname("JAVA");
  search.setPublisher("7");
  BookDAO dao = BookDAO.getInstance();
  ArrayList<BookDTO> list = dao.Select("C",search);
%>
<div id="wrapper" class="container-md w-75" style="margin: 10px auto;">
  <table class="table table-striqed">
    <tr>
      <th>NO</th>
      <th>BookCode</th>
      <th>BookName</th>
      <th>Publisher</th>
      <th>PageNo</th>
      <th>Amount</th>
    </tr>
    <%
      for (int i = 0; i < list.size(); i++) {
    %>
    <tr>
      <td><%=list.get(i).getNo()%></td>
      <td><%=list.get(i).getBookcode()%></td>
      <td><%=list.get(i).getBookname()%></td>
      <td><%=list.get(i).getPublisher()%></td>
      <td><%=list.get(i).getTotalpage()%></td>
      <td><%=list.get(i).getAmount()%></td>
    </tr>
    <%
      }
    %>

  </table>

</div>
</body>
</html>
