
<%@ page contentType="text/html; charset=EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<h1>도서 주문 페이지</h1>

<form method="post" action="/MVCApp/cart.action"> <!-- 맨앞의 / 는 8080까지의 경로임 -->
<input type="hidden" name="command" value="ADD" /> <!--  들어오는게 어떤 요청인지를 서버에서 구분할 수 있게함 -->
<b>도서 선택 : </b>
<select name="book">
	<option>어린왕자 / 생떽쥐페리 / 15000</option>
	<option>연슴술사 / 파올로 코엘료 / 21000</option>
	<option>홍길동전 / 허균 / 25000</option>
	<option>50 Great Short Stories / Crane, Milton / 9800</option>

</select>
<b>수량 : </b>
<input type="text" name="quantity" size="2" value="1" />
<input type="submit" value="장바구니에 담기" />
</form>
<hr/>
<jsp:include page="cart.jsp" />
</body>
</html>