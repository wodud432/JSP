<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
Connection con = null;
Statement stmt = null;
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "scott";
String pw = "1111";


String no = request.getParameter("no");
String sql = "delete from tblsawon where no=" + no;


try{
   Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection(url, id, pw);


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
   if(stmt != null) try{ stmt.close(); } catch(Exception err){}
   if(con != null)   try{ con.close(); } catch(Exception err){}
}
%>
