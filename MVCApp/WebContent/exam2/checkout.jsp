
<%@page import="mvc.exam2.BookDto"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<%

	Vector<BookDto> bookList = (Vector)session.getAttribute("cart"); //bookcontroller���� �������� ����
	int value=0;
%>
<body>
<h1>���� ���� �ֹ� ������</h1>
<b>�ֹ��� ����</b><br/>
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
				
	</tr>
	<%
		value += d.getQuantity()*d.getPrice();
	} 
	%>

</table>
<hr/>
<b>��ü ���� �׼� : <%= value %></b>
</body>
</html>