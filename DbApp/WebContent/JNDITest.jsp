<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<h1>JNDI�� �̿��� DB���� �׽�Ʈ</h1>
<%
   try{
      Context ctx = new InitialContext();  //InitialContext() -> context(�ϳ��� ������Ʈ)�� ���� ������ ������
      DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracleDB");  //java:comp/env/ ������ ���������� �׳ɾ����
      Connection con = ds.getConnection();
      
      if(con != null)
         out.println("���� ����");
   }
   catch(Exception err){
      err.printStackTrace();
   }

%>
</body>
</html>