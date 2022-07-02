<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import = "java.sql.*,java.util.*" %>
<%
    String url = "jdbc:oracle:thin:@localhost:1521:xe"; //URL
    String id = "book_ex"; //ID
    String pw = "1234"; //PW

    Connection conn=null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try{
        //드차리버 적재
        Class.forName("oracle.jdbc.driver.OracleDriver");
        //URL 유효하다면 커넥션 객체 DB에 연결
        conn = DriverManager.getConnection(url,id,pw);
        System.out.println("Connected...");
        //쿼리객체
        int i = 100;
        while(i <= 150){
            pstmt = conn.prepareStatement("select * from book_tbl where no = " + i);

            //쿼리 전송
            rs = pstmt.executeQuery();
            while (rs.next()) {
                out.print(rs.getInt("No") + " | ");
                out.print(rs.getInt("BookCode") + " | ");
                out.print(rs.getString("BookName") + " | ");
                out.print(rs.getString("Publisher") + " | ");
                out.print(rs.getInt("TotalPage") + " | ");
                out.print(rs.getInt("Amount") + " <br> ");
            }
            i++;
        }

    } catch (Exception e){
        e.printStackTrace();
    }finally{
        try{rs.close();}catch(Exception e1){e1.printStackTrace();}
        try{pstmt.close();}catch(Exception e1){e1.printStackTrace();}
        try{conn.close();}catch(Exception e1){e1.printStackTrace();}
    }
%>

</body>
</html>
