
<%@page import="mvc.exam2.BookDto"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" %>

<%

	Vector<BookDto> bookList = (Vector)session.getAttribute("cart"); //bookcontroller���� �������� ����

%>
<%
try{
	 if(bookList != null ||  bookList.size() > 0)
	{
%>
<b>���� �ֹ��� ����</b><br/>
<table border="1">
	<tr>
		<th>���� ����</th><th>�۰�</th><th>����</th><th>����</th>		
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
				<input type="hidden" name="index" value="<%=bookList.indexOf(d) %>"/>	<!-- i��° ���� �����ϱ� ���ؼ�  -->
				<input type="submit" value="����" />
			</form>
		</td>		
	</tr>
	<%} %>


</table>
<br/>
<form method="post" action="/MVCApp/cart.action">
	<input type="hidden" name="command" value="CHK" /> <!--  �����°� � ��û������ �������� ������ �� �ְ��� -->
	
	<input type="submit" value="üũ�ƿ�" />

</form>
<%
	}
}
catch(NullPointerException err){}
%>
