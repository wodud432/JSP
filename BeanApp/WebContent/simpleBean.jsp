<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>simpleBean.jsp</title>
</head>
<body>
<jsp:useBean id="s1" class="mybean.SimpleBean" />
<jsp:setProperty property="message" name="s1" value="���� ������ ��"/>
Message : <jsp:getProperty property="message" name="s1"/>
<hr/>
<%
	mybean.SimpleBean s2 = new mybean.SimpleBean();
	s2.setMessage("��ũ��Ʈ���� �̿��� �޼��� ȣ��");
	s1.setMessage("action tag�� ���� �ν��Ͻ��� ȣ��");
%>
Message : <%=s2.getMessage() %><br/>
Message : <%=s1.getMessage() %>
</body>
</html>



