<%@ page  contentType="text/html; charset=EUC-KR"%>
<%!
   public String getParam(HttpServletRequest req, String param){//�������� ������ ������ �ٽõ��ƿö� ���Ϲް���(�����ְ�)(�׷��� ���������Ҷ� �����ȳ�)
      if(req.getParameter(param) != null)
         return req.getParameter(param);
      else
         return "";
   } //���� �����ϱ� ���� �ϳ��� ���(���۵ǰ� �ٽ� �������� ��ȯ�ص�)->������ ��ǲŸ�Կ� ���������, ��, �ؽ�Ʈ������ value������ �� ����
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
<script type="text/javascript">
   function fnElementChk(f){
      //var cnt = document.forms[0].add.value;
      var cnt= f.elements.length; //elements �� form���� ��� ��ü //���ڰ� ����� ���� Ȯ��
      //alert(cnt); //�⺻��ü 4�� +�߰��ϰڴٰ� �� ����
      var paramIndex = 1;
      for(var i=0; i<cnt; i++){
         if(f.elements[i].type == "file"){  //��ư���� ���� �ʿ��Ѱ͸� ó���ϰ� �����
            if(f.elements[i].value == ""){
               alert(paramIndex + "��° ĭ�� ����ֽ��ϴ�. \n ����� �Է��Ͻʽÿ�");
               f.nextElements[i].focus();
               return;
            }
            paramIndex++;
            
         }
         
      }
      f.submit();//������ ����
   }
</script>
</head>
<body>
<%
   int cnt=0;
   if(request.getParameter("add") != null){ //�Ʒ� ���̺��� ���۹��� �߰��� ���� ��
      cnt = Integer.parseInt(request.getParameter("add"));
   }
%>
<h1>���� ���� ���ε�</h1>
<form method="post" action="multiFile.jsp">
<!-- �ΰ��� ���̺��� ������ �ٸ��⿡ form�� ������ �� ���̺��� ȯ�ι�ư�� ������ �� �ٽ� ���������� ���̵��� �� -->
<table width="60%" border="1">
<tr>
   <td>�����</td>
   <td><input type="text" name="user" value='<%=getParam(request,"user")%>'/></td>
   <td>����</td>
   <td><input type="text" name="title" value='<%=getParam(request,"title")%>'/></td>
</tr>
<tr>
   <td>�ϰ� ���� �� :</td>
   <td colspan="3"><textarea rows="3" cols="70" name="note"><%=getParam(request,"note")%></textarea></td>
</tr>
<tr>
   <td colspan="4">
      �߰��� ���� �� �Է� : <input type="text" name="add"/>&nbsp;&nbsp;
      <input type="submit" value="Ȯ��" />
   </td>
</tr>
</table>
</form>
<form method="post" action="multiFile_proc.jsp" enctype="multipart/form-data">
<input type="hidden" name="user" value='<%=getParam(request,"user")%>'/>  <!-- �������� �޾ƿ� ���ڰ��� ���Ͼ��ε��Ҷ� �ΰ� ���� ������ �ٽ� ���� -->
<input type="hidden" name="title" value='<%=getParam(request,"title")%>'/>
<input type="hidden" name="note" value='<%=getParam(request,"note")%>'/>
<table border="1">
   <tr>
      
      <td>
         <%for(int i=0; i<cnt; i++){ //���� ���̺��� �Է��� �߰��� ���ϼ��� ���� ��ũ��Ʋ������ cnt�� �������� %> 
         <input type="file" name="upFile<%=i%>" size="50"/><br/> <!-- �̸��� �ٸ��� ���ֱ� ���� �ݺ����� ���� i�� �̿�--> <!--  %=i% �Է��� �̸��� �Ź� �ٲ��ֱ����� ���� file1 file2 file3...-->
         <%} %>
      </td>   
      <td><input type="button" value="���ε�" onclick="fnElementChk(this.form)"/></td> <!-- this.form -> form��ü�� ������ �Ű������� �Ѱ��� -->
      <!-- this�� �� ��ư, �̰��� �����ִ� form��ü ���θ� �ǹ�. this�� �ϸ� ��ư�� ���� ������ �Ѿ -->
   </tr>
</table>
</form>
</body>
</html>