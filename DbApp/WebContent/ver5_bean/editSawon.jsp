<%@page import="mybean.dto.EmpDto"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="mybean.dao.EmpDao" />
<%
	int no = Integer.parseInt(request.getParameter("no"));
	EmpDto dto = dao.getSawon(no);
%>
<h1>��� ���� ����</h1>
<form method="post" action="editSawon_proc.jsp">
<input type="hidden" name="no" value="<%=no%>" />
<table border="1">
	<tr>
		<td>���̵� : </td> <td><input type="text" name="id" value="<%=dto.getId()%>"/></td>
	</tr>
	<tr>
		<td>�̸� : </td> <td><input type="text" name="name" value="<%=dto.getName()%>"/></td>
	</tr>
	<tr>
		<td>���� : </td> <td><input type="text" name="age" value="<%=dto.getAge()%>"/></td>
	</tr>
	<tr>
		<td>�н����� : </td> <td><input type="text" name="pass" value="<%=dto.getPass()%>"/></td>
	</tr>
	<tr>
		<td>�ٹ��� : </td> 
		<td>
			<select name="addr">
				<option value="����" <%if(dto.getAddr().equals("����")){%> selected="true" <%}%>>����</option>
				<option value="����" <%if(dto.getAddr().equals("����")){%> selected="true" <%}%>>����</option>
				<option value="�λ�" <%if(dto.getAddr().equals("�λ�")){%> selected="true" <%}%>>�λ�</option>
				<option value="���" <%if(dto.getAddr().equals("���")){%> selected="true" <%}%>>���</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>���� ��ȣ : </td> <td><input type="text" name="ext" value="<%=dto.getExt()%>"/></td>
	</tr>
	<tr>
		<td>�μ��� : </td> 
		<td>
			<select name="dept">
				<option value="����" <%if(dto.getDept().equals("����")){%> selected="true" <%}%>>����</option>
				<option value="���" <%if(dto.getDept().equals("���")){%> selected="true" <%}%>>���</option>
				<option value="��ȹ" <%if(dto.getDept().equals("��ȹ")){%> selected="true" <%}%>>��ȹ</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="�߰�" />&nbsp;&nbsp;&nbsp;
			<input type="reset" value="�ٽ� �ۼ�" />
		</td>
	</tr>
</table>
</form>
</body>
</html>