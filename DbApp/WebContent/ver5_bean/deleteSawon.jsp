<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="dao" class="mybean.dao.EmpDao" />
<%
	int no = Integer.parseInt(request.getParameter("no"));
	dao.delSawon(no);
%>
	<script type="text/javascript">
		alert("���� �Ǿ����ϴ�.");
		location.href="index.jsp";
	</script>
%>