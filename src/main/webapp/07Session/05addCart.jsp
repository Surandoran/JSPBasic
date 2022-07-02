
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>


<body>
<jsp:useBean id="Cartbean" class="Ch07.CartRepository" scope="application" />
<jsp:useBean id="ProductDTO" class="Ch07.ProductDTO" scope="page" />
<jsp:setProperty property="*" name="ProductDTO"/>
<%@page import="java.util.*,Ch07.*" %>
<%
	//유저id별로 리스트가 연결 -> 카트빈에 아이디와 상품정보를 담음 -> cart클릭시 userid확인하여 cartbean에 있는 id(key값)에 있는 value값을 productDTO에 저장
	System.out.println("받은 상품 정보 : "+ProductDTO.toString());
	String id = (String) session.getAttribute("ID");
	Cartbean.cart.get(id).add(ProductDTO);
%>
<script>
	alert("상품을 카트에 담았습니다.");
	location.href="05Main.jsp";
</script>
</body>
</html>