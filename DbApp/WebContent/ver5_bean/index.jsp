<%@page import="mybean.dto.EmpDto"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
<script type="text/javascript">
	function delCheck(no){
		var result = confirm("���� �����Ͻðڽ��ϱ�?");
		if(result == true){
			location.href="deleteSawon.jsp?no=" + no;
		}
	}
</script>
</head>
<body>
<h1>���� ���� ����Ʈ</h1>
<a href="addSawon.html">��� �߰�</a><br/><br/>
<form method="post" action="index.jsp">
	<select name="search">
		<option value="id">id</option>
		<option value="addr">�ٹ���</option>
		<option value="dept">�μ�</option>
		<option value="ext">������ȣ</option>
	</select>
	<input type="text" name="searchText" />
	<input type="submit" value="�˻�" />
</form><br/>
<table border="1">
	<tr>
		<th>���</th><th>ID</th><th>�̸�</th><th>�н�����</th><th>����</th>
		<th>�ٹ���</th><th>�μ���</th><th>������ȣ</th>
		<th>����</th><th>����</th>
	</tr>
<%
	request.setCharacterEncoding("euc-kr");
	String search = request.getParameter("search");
	String searchText = request.getParameter("searchText");
%>

<jsp:useBean id="dao" class="mybean.dao.EmpDao" />

<%
	List list = dao.getList(search, searchText);
	for(int i=0; i<list.size(); i++){
		EmpDto dto = (EmpDto)list.get(i);
%>
	<tr>
		<td><%=dto.getNo()%></td> <td><%=dto.getId()%></td> 
		<td><%=dto.getName()%></td> <td><%=dto.getPass()%></td> 
		<td><%=dto.getAge()%></td> <td><%=dto.getAddr()%></td>
		<td><%=dto.getDept()%></td> <td><%=dto.getExt()%></td> 
		<td><a href="editSawon.jsp?no=<%=dto.getNo()%>">����</a></td>
		<td><a href="javascript:delCheck(<%=dto.getNo()%>)">����</a></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>