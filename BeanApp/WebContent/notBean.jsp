<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance();
%>
������
<%=cal.get(Calendar.YEAR) %>��
<%=cal.get(Calendar.MONTH)+1 %>��
<%=cal.get(Calendar.DATE) %>�� �Դϴ�.
</body>
</html>