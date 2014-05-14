
<%@page import="mvc.exam2.BookDto"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" %>

<%

	Vector<BookDto> bookList = (Vector)session.getAttribute("cart"); //bookcontroller에서 보낸값을 받음

%>
<%
try{
	 if(bookList != null ||  bookList.size() > 0)
	{
%>
<b>현재 주문한 도서</b><br/>
<table border="1">
	<tr>
		<th>도서 제목</th><th>작가</th><th>가격</th><th>수량</th>		
	</tr>
	<%
	for(BookDto d : bookList){		
	%>
	<tr>
		<td><%=d.getTitle() %></td>
		<td><%=d.getAuthor() %></td>
		<td><%=d.getPrice() %></td>
		<td><%=d.getQuantity() %></td>
		<td>		 
			<form method="post" action="/MVCApp/cart.action">
				<input type="hidden" name="command" value="DEL"/>
				<input type="hidden" name="index" value="<%=bookList.indexOf(d) %>"/>	<!-- i번째 값을 삭제하기 위해서  -->
				<input type="submit" value="삭제" />
			</form>
		</td>		
	</tr>
	<%} %>


</table>
<br/>
<form method="post" action="/MVCApp/cart.action">
	<input type="hidden" name="command" value="CHK" /> <!--  들어오는게 어떤 요청인지를 서버에서 구분할 수 있게함 -->
	
	<input type="submit" value="체크아웃" />

</form>
<%
	}
}
catch(NullPointerException err){}
%>
