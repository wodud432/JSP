<%@page import="java.util.Enumeration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<% 
   ServletContext ctx = getServletContext();//���� ��������ִ� ������Ʈ�� ���� �⺻���� ������ ����
   //out.println(ctx.getRealPath("upload")); //���� ���ε尡 ���� ������ �ϴ� ���Ȯ��
   //D:\\jsp\\EclipseWepApps\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\wtpwebapps\\FileUploadApp\\upload 
   String path = ctx.getRealPath("upload"); //���� ��θ� String������ ����
   int max = 5*1024*1024;// 5MB�� �����ϱ����� int�� ����
   MultipartRequest multi = new MultipartRequest(request, path, max, "euc-kr", new DefaultFileRenamePolicy()); 
   // request+upload����� ���� ��ü, ���⼭�� ��ť��Ʈ�� 5��° �����ڸ� �̿�(��û,���,�ִ������,���ڵ�Ÿ��,���ϸ����� �ȷ��ð�ü ����)
   //out.println(request.getParameter("user")); =>null�� ����
   String user = multi.getParameter("user");
   String title = multi.getParameter("title");
   String note = multi.getParameter("note").replace("\n","<br/>");
    
   ArrayList saveFiles = new ArrayList();
   ArrayList originFiles = new ArrayList(); //���� �̸��� ��� �̸��� ����Ǳ� ���� ����
   
   Enumeration enumer = multi.getFileNames();
   while(enumer.hasMoreElements()){
      String name = (String)enumer.nextElement();
      saveFiles.add(multi.getFilesystemName(name));
      originFiles.add(multi.getOriginalFileName(name));
   }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
    �����: <%= user%> <br/>
    ����: <%= title%> <br/>
    �ϰ� ���� ��:<br/>
  <%= note%> 
  <hr/>
  <%  for(int i=0; i<saveFiles.size(); i++){ %>
        <!-- <a href="<%=path%>/<%=saveFiles.get(i)%>"><%=originFiles.get(i) %></a><br/> ��ΰ� �����-->
        <a href="download.jsp?path=upload&name=<%=saveFiles.get(i)%>"><%=originFiles.get(i) %></a><br/>
        
  <%  } %>
</body>
</html>