<%@page import="mybean.dbcp.DBConnectionMgr"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
Connection con = null;
PreparedStatement stmt = null;
DBConnectionMgr pool = null;  //DBConnectionMgr Ŭ���� ����ϱ����� ������


request.setCharacterEncoding("euc-kr");
response.setCharacterEncoding("euc-kr");


String no = request.getParameter("no");
String s_id = request.getParameter("s_id");
String s_name = request.getParameter("s_name");
String s_pw = request.getParameter("s_pw");
String s_age = request.getParameter("s_age");
String s_addr = request.getParameter("s_addr");
String s_ext = request.getParameter("s_ext");
String s_dept = request.getParameter("s_dept");


String sql = "update tblsawon set id='" + s_id + "', name='" + s_name
   + "', pass='" + s_pw + "', age=" + s_age + ", addr='" + s_addr
   + "', ext='" + s_ext + "', dept='" + s_dept + "' where no=" + no;
//out.println(sql);


try{
  

	pool = DBConnectionMgr.getInstance();
    con = pool.getConnection(); //�Ź� db�� ������ �ʿ� ���� DBConnectionMgr�� �����ϸ� �ȴ�
    
   stmt = con.prepareStatement(sql);
   stmt.executeUpdate(sql);
%>
   <h2>��� ������ �� ���� �Ǿ���.</h2>
   <a href="index.jsp">���� ȭ������</a>   
<%
}
catch(Exception err){
   System.out.println("editSawon_proc.jsp : " + err);
}
finally{
	  pool.freeConnection(con, stmt);
}
%>
