<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	response.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="dao" class="mybean.dao.EmpDao" />
<jsp:useBean id="dto" class="mybean.dto.EmpDto" />
<jsp:setProperty property="*" name="dto"/>
<%
	dao.modifySawon(dto);
%>
	<h2>��� ������ �� ���� �Ǿ���.</h2>
	<a href="index.jsp">���� ȭ������</a>	