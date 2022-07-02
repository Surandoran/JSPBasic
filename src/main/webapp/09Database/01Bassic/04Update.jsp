<%--
  Created by IntelliJ IDEA.
  User: 손필욱
  Date: 2022-06-30
  Time: 오후 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*" %>
<%
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String id = "book_ex";
    String pw = "1234";

    Connection conn = null;
    PreparedStatement pstmt = null;

    try{
        //드라이버 적재
        Class.forName("oracle.jdbc.driver.OracleDriver");
        //DB에 연결
        conn = DriverManager.getConnection(url,id,pw);
        System.out.println("Connected...");
        pstmt = conn.prepareStatement("update tbl_board set title=?, content=? where bno=?");

        pstmt.setString(1, "UpdateTitle");
        pstmt.setString(2, "UpdateContent");
        pstmt.setInt(3, 100);

        int result = pstmt.executeUpdate();

        if(result > 0) {
            System.out.println("성공!");
        } else {
            System.out.println("실패");
        }

    }catch (Exception e) {
        e.printStackTrace();
    }finally {
        try{
            conn.close();
        }catch (Exception e1) {
            e1.printStackTrace();
        }
    }
%>
</body>
</html>
