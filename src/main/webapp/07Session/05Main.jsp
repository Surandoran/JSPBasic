
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

<body>
<h1 align=center>CART</h1>
<hr>
세션 ID : <%=session.getId() %><br>
계정 ID : <%=session.getAttribute("ID") %><br>
세션 유지시간 : <%=session.getMaxInactiveInterval() %><br>

<script>
	stime = new Date();
	max = <%=session.getMaxInactiveInterval() %>;
	//alert("시작시간 : "+stime+"\n MAX : "+max);


	function timer(){
		//30초에서 1초씩 줄어듦
		max = max -1;
		if(max<0)
		{
			clearInterval(tmp);
			alert("세션종료");
			location.href="05LoginForm.jsp";
		}
		document.getElementById("timer").innerHTML=max;
	}
	//비동기 처리 || setInterval : timer 함수를 1초단위로 계속 실행
	tmp = setInterval(timer,1000);
</script>
<p id="timer"></p>
<a href="05ShowCartList.jsp">CART로 이동</a>
<a href="05Logout.jsp">로그아웃</a>

<style>
	#maincontents{
		display:flex;
		justify-content: space-around;

	}

	#maincontents img{
		width:100%;
		height:300px;
	}

</style>
<div id="wrapper">
	<div id="maincontents" class="container-md">
		<!-- ITEM1 -->
		<div class="card" style="width: 18rem;">
			<form>
				<input type="hidden" name="prodname" value="diptyque" />
				<input type="hidden" name="cat" value="perfume" />
				<input type="hidden" name="price" value="200000" />
				<img src="https://contents.lotteon.com/itemimage/_v111422/LE/12/06/91/12/43/_1/23/77/94/55/7/LE1206911243_1237794557_1.jpg/dims/optimize/dims/resizemc/400x400" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title mb-2">딥디크 도손 오드뚜알렛</h5>
					<input type=submit class="btn btn-outline-dark w-100" value="상세정보">
					<button onclick="addtoCart(0)" class="btn btn-outline-dark w-100 mt-3">CART</button>
				</div>
			</form>
		</div>
		<!-- ITEM2 -->
		<div class="card" style="width: 18rem;">
			<form>
				<input type="hidden" name="prodname" value="doson" />
				<input type="hidden" name="cat" value="perfume" />
				<input type="hidden" name="price" value="210000" />
				<img src="https://pbs.twimg.com/media/E8z_ZqIVIAIc3m5.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title mb-2">딥디크 오드뚜알렛 교토</h5>
					<input type=submit class="btn btn-outline-dark w-100" value="상세정보">
					<button onclick="addtoCart(1)" class="btn btn-outline-dark w-100 mt-3">CART</button>
				</div>
			</form>
		</div>
		<!-- ITEM3 -->
		<div class="card" style="width: 18rem;">
			<form>
				<input type="hidden" name="prodname" value="limit" />
				<input type="hidden" name="cat" value="perfume" />
				<input type="hidden" name="price" value="220000" />
				<img src="https://contents.lotteon.com/itemimage/_v212419/LO/17/27/42/91/58/_1/72/74/29/15/9/LO1727429158_1727429159_1.jpg/dims/resizef/720X720" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title mb-2">딥디크 도손 리미티드</h5>
					<input type=submit class="btn btn-outline-dark w-100" value="상세정보">
					<button onclick="addtoCart(2)" class="btn btn-outline-dark w-100 mt-3">CART</button>
				</div>
			</form>
		</div>
	</div>
</div>

<script>
	function addtoCart(num){
		form = document.forms[num]; //num번째 form태그
		prodname = form[0].value; 	//num번째 form태그의 첫번째 input안의 값
		cat = form[1].value;		//num번째 form태그의 두번째 input안의 값
		price = form[2].value;		//num번째 form태그의 세번째 input안의 값
		isok=confirm("상품명 : "+prodname+"\n카테고리 : "+cat+"\n가격 : "+price);
		if(isok)
		{
			form.action="05addCart.jsp"
			form.submit();

		}
	}
</script>
</body>
</head>
</html>