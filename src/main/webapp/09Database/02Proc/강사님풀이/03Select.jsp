<%@ page import="Ch09.BookDAO" %>
<%@ page import="Ch09.BookDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<%
    BookDAO dao = BookDAO.getInstance();

    String type = request.getParameter("type");
    String word = request.getParameter("word");

    BookDTO search = new BookDTO();
    ArrayList<BookDTO> list = null;
    if(type != null)
    {
        switch(type)
        {
            case "C":
                search.setBookcode(Integer.parseInt(word));
                break;
            case "N":
                search.setBookname(word);
                break;
            case "P":
                search.setPublisher(word);
                break;
        }
        list = dao.Select(type, search);
    }
    else
    {
        list =  dao.Select();
    }

%>

<div id="wrapper" class="container-md w-75" style="margin:10px auto">
    <form action="03Select.jsp">
        <div class="row mb-3">
            <div class="col-5" style="width:130px">
                <select name="type" class="form-select w-100" id="search">
                    <option value="C" selected>코드</option>
                    <option value="N">이름</option>
                    <option value="P">출판사</option>
                </select>
            </div>
            <div class="col">
                <input type="text" name="word" class="form-control">
            </div>
            <div class="col">
                <input type="submit" class="btn btn-secondary" value="검색">
            </div>
        </div>
    </form>
    <table class="table table-striped">
        <tr>
            <th>NO</th>
            <th>BookCode</th>
            <th>BookName</th>
            <th>Publisher</th>
            <th>PageNo</th>
            <th>Amount</th>
        </tr>
        <%
            for(BookDTO bookDTO : list)
            {
        %>
        <tr>
            <td><%=bookDTO.getNo()%>
            </td>
            <td><%=bookDTO.getBookcode()%>
            </td>
            <td><%=bookDTO.getBookname()%>
            </td>
            <td><%=bookDTO.getPublisher()%>
            </td>
            <td><%=bookDTO.getTotalpage()%>
            </td>
            <td><%=bookDTO.getAmount()%>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>