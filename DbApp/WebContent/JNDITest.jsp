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
<h1>JNDI를 이용한 DB연결 테스트</h1>
<%
   try{
      Context ctx = new InitialContext();  //InitialContext() -> context(하나의 프로젝트)에 대한 정보를 가져옴
      DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracleDB");  //java:comp/env/ 가상의 프로토콜임 그냥쓰면됨
      Connection con = ds.getConnection();
      
      if(con != null)
         out.println("연결 성공");
   }
   catch(Exception err){
      err.printStackTrace();
   }

%>
</body>
</html>