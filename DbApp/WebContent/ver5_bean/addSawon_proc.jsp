<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="dao" class="mybean.dao.EmpDao" />
<jsp:useBean id="dto" class="mybean.dto.EmpDto" />
<%
request.setCharacterEncoding("euc-kr");
response.setCharacterEncoding("euc-kr");

dto.setId(request.getParameter("s_id"));
dto.setName(request.getParameter("s_name"));
dto.setPass(request.getParameter("s_pw"));
dto.setAge(Integer.parseInt(request.getParameter("s_age")));
dto.setAddr(request.getParameter("s_addr"));
dto.setExt(request.getParameter("s_ext"));
dto.setDept(request.getParameter("s_dept"));

dao.addSawon(dto);
%>
	<h2>��� ������ �� �߰� �Ǿ���.</h2>
	<a href="addSawon.html">�Է� ȭ������</a><br/>
	<a href="index.jsp">���� ȭ������</a>	