<%@ page  contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
<script type="text/javascript">
   function delCheck(no){
      var result = confirm("���� �����Ͻðڽ��ϱ�?");
      if(result == true){
         location.href="deleteSawon.jsp?no=" + no;
      }
   }
</script>

</head>
<body>
<h1>���� ���� ����Ʈ</h1>
<a href="addSawon.html">����߰�</a><br/><br/>
<form method="post" action="index.jsp">
   <select name="search">
      <option value="id">id</option>
      <option value="addr">�ٹ���</option>
      <option value="dept">�μ�</option>
      <option value="ext">������ȣ</option>      
   </select>
   <input type="text" name="searchText"/>
   <input type="submit" value="�˻�"/>
   
</form>
<table border="1">
   <tr>
      <th>���</th><th>ID</th><th>�̸�</th><th>�н�����</th><th>����</th>
      <th>�ٹ���</th><th>�μ���</th><th>������ȣ</th>
      <th>����</th><th>����</th>
   </tr>
<%
   Connection con = null;//db������ ���� connection��ü
   PreparedStatement stmt = null;//db�� ����ϱ� ���� ��ü Statement
   ResultSet rs = null;//db���� �ҷ��� ����� �ӽ÷� �����ϱ� ���� ��ü
   String url ="jdbc:oracle:thin:@localhost:1521:orcl";
   String id = "scott";
   String pw = "1111";
   
   request.setCharacterEncoding("euc-kr");
   String search = request.getParameter("search");
   String searchText = request.getParameter("searchText");
   String sql = null;


   try{
      if(searchText.isEmpty()){
         sql = "select * from tblsawon";   
      }
      else{
         sql = "select * from tblsawon where " + search + " like '%"
            + searchText + "%'";
      }
   }
   catch(NullPointerException err){
      sql = "select * from tblsawon";   
   }

   try{
      Class.forName("oracle.jdbc.driver.OracleDriver");
      con = DriverManager.getConnection(url,id, pw);
      
      stmt=con.prepareStatement(sql);//��ɾ� db�� �������� �����ϴ� ����
      rs = stmt.executeQuery(sql); //������ ��ɹ��� �����ϰ� ����� �޾ƿͼ� ����
      
      while(rs.next()){//����ؼ� �޾ƿ� ����� ����ϱ� ���� �ݺ������� ����� ������ ����
         int s_no = rs.getInt("no");
         String s_id = rs.getString("id");
         String s_name = rs.getString("name");
         String s_pw = rs.getString("pass");
         int s_age = rs.getInt("age");
         String s_addr = rs.getString("addr");
         String s_dept = rs.getString("dept");
         String s_ext = rs.getString("ext");
%>
   <tr>
      <td><%=s_no%></td><td><%=s_id%></td><td><%=s_name%></td><td><%=s_pw%></td>
      <td><%=s_age%></td><td><%=s_addr%></td><td><%=s_dept%></td><td><%=s_ext%></td>
      <td><a href="editSawon.jsp?no=<%=s_no%>">����</a></td>
      <td><a href="javascript:delCheck(<%=s_no%>)">����</a></td>
   </tr>
<% 
      }
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
</table>
</body>
</html>

