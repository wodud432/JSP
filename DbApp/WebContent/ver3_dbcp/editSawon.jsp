<%@page import="mybean.dbcp.DBConnectionMgr"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<%
   Connection con = null;
   PreparedStatement stmt = null;
   ResultSet rs = null;
   /*
   String url = "jdbc:oracle:thin:@localhost:1521:orcl";
   String id = "scott";
   String pw = "1111";
   */
   DBConnectionMgr pool = null; 
  

   String no = request.getParameter("no");
   String s_id = null;
   String s_name = null;
   String s_pw = null;
   int s_age = 0;
   String s_addr = null;
   String s_dept = null;
   String s_ext = null;


   try{
	   /*
      Class.forName("oracle.jdbc.driver.OracleDriver");
      con = DriverManager.getConnection(url, id, pw);
      */

      pool = DBConnectionMgr.getInstance();
      con = pool.getConnection(); 

      String sql = "select * from tblsawon where no=" + no;
      stmt = con.prepareStatement(sql);


      rs = stmt.executeQuery(sql);
      if(rs.next()){
         s_id = rs.getString("id");
         s_name = rs.getString("name");
         s_pw = rs.getString("pass");
         s_age = rs.getInt("age");
         s_addr = rs.getString("addr");
         s_dept = rs.getString("dept");
         s_ext = rs.getString("ext");
      }
   }
   catch(Exception err){
      System.out.println("editSawon.jsp : " + err);
   }
   finally{
	   pool.freeConnection(con, stmt, rs);
   }
%>
<h1>��� ���� ����</h1>
<form method="post" action="editSawon_proc.jsp">
<input type="hidden" name="no" value="<%=no%>"/>
<table border="1">
   <tr>
      <td>���̵� : </td> <td><input type="text" name="s_id" value="<%=s_id%>"/></td>
   </tr>
   <tr>
      <td>�̸� : </td> <td><input type="text" name="s_name" value="<%=s_name%>"/></td>
   </tr>
   <tr>
      <td>���� : </td> <td><input type="text" name="s_age" value="<%=s_age%>"/></td>
   </tr>
   <tr>
      <td>�н����� : </td> <td><input type="text" name="s_pw" value="<%=s_pw%>"/></td>
   </tr>
   <tr>
      <td>�ٹ��� : </td> 
      <td>
         <select name="s_addr">
            <option value="����" <%if(s_addr.equals("����")){%>selected="true"<%}%>>����</option>
            <option value="����" <%if(s_addr.equals("����")){%>selected="true"<%}%>>����</option>
            <option value="�λ�" <%if(s_addr.equals("�λ�")){%>selected="true"<%}%>>�λ�</option>
            <option value="���" <%if(s_addr.equals("���")){%>selected="true"<%}%>>���</option>
         </select>
      </td>
   </tr>
   <tr>
      <td>���� ��ȣ : </td> <td><input type="text" name="s_ext" value="<%=s_ext%>"/></td>
   </tr>
   <tr>
      <td>�μ��� : </td> 
      <td>
         <select name="s_dept">
            <option value="����" <%if(s_addr.equals("����")){%>selected="true"<%}%>>����</option>
            <option value="���" <%if(s_addr.equals("���")){%>selected="true"<%}%>>���</option>
            <option value="��ȹ" <%if(s_addr.equals("��ȹ")){%>selected="true"<%}%>>��ȹ</option>
         </select>
      </td>
   </tr>
   <tr>
      <td colspan="2" align="center">
         <input type="submit" value="����" />&nbsp;&nbsp;&nbsp;
         <input type="reset" value="�ٽ� �ۼ�" />
      </td>
   </tr>
</table>
</form>
</body>
</html>
