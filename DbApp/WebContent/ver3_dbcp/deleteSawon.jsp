<%@page import="mybean.dbcp.DBConnectionMgr"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
Connection con = null;
Statement stmt = null;
DBConnectionMgr pool = null; 


String no = request.getParameter("no");
String sql = "delete from tblsawon where no=" + no;


try{/*
   Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection(url, id, pw);
*/
pool = DBConnectionMgr.getInstance();
con = pool.getConnection(); 

   stmt = con.createStatement();
   stmt.executeUpdate(sql);
%>
   <script type="text/javascript">
      alert("�����Ǿ����ϴ�");
      location.href="index.jsp";
   </script>
<%
}
catch(Exception err){
   System.out.println("deleteSawon_proc.jsp : " + err);
}
finally{
	 pool.freeConnection(con, stmt);
}
%>
