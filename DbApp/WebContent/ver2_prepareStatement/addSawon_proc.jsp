<%@ page  contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
Connection con = null;//db������ ���� connection��ü
PreparedStatement stmt = null;//db�� ����ϱ� ���� ��ü Statement
ResultSet rs = null;//db���� �ҷ��� ����� �ӽ÷� �����ϱ� ���� ��ü
String url ="jdbc:oracle:thin:@localhost:1521:orcl";
String id = "scott";
String pw = "1111";

request.setCharacterEncoding("euc-kr");
response.setCharacterEncoding("euc-kr");

String s_id = request.getParameter("s_id");
String s_name = request.getParameter("s_name");
String s_pw = request.getParameter("s_pw");
String s_age = request.getParameter("s_age");
String s_addr = request.getParameter("s_addr");
String s_ext = request.getParameter("s_ext");
String s_dept = request.getParameter("s_dept");

//out.println(s_id+","+s_name+","+s_pw+","+s_age+","+s_addr+","+s_ext+","+s_dept);
String sql = "insert into tblsawon(no,id,name,pass,age,addr,ext,dept) values(seq_no.nextVal,'"+s_id+"','"+s_name+"','"+s_pw+"',"+s_age+",'"+s_addr+"','"+s_ext+"','"+s_dept+"')";
out.println(sql);



try{
   Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection(url,id, pw);
   
   stmt=con.prepareStatement(sql);
   stmt.executeUpdate(sql);
%>
   <h2>��� ������ �� �߰� �Ǿ���.</h2>
   <a href="addSawon.html">�Է�ȭ������</a><br/>
   <a href="index.jsp"> ����ȭ������</a><br/>
   
<%
}
catch(Exception err){
   System.out.println("index.jsp:"+err);
}
finally{
   if(rs != null) try{rs.close();}catch(Exception err){}
   if(stmt != null) try{stmt.close();}catch(Exception err){}
   if(con != null) try{con.close();}catch(Exception err){}
}

%>   
  