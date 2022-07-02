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
    ResultSet rs = null;

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(url, id, pw);
        System.out.println("Connected...");

        pstmt = conn.prepareStatement("insert into tbl_board values(?,?,?,?)");
        pstmt.setInt(1, 1);
        pstmt.setString(2, "Title1");
        pstmt.setString(3, "Content1");
        pstmt.setString(4, "Writer1");
        int result = pstmt.executeUpdate();

        if (result > 0) {
%>
<script>
    alert("Insert 써ㅏㅏㅇ공")
</script>
<%

        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            pstmt.close();
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        try {
            conn.close();
        } catch (Exception e1) {
            e1.printStackTrace();
        }
    }
%>
</body>
</html>
