<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<%
   ServletContext ctx = getServletContext();//���� ��������ִ� ������Ʈ�� ���� �⺻���� ������ ����
   //out.println(ctx.getRealPath("upload")); //���� ���ε尡 ���� ������ �ϴ� ���Ȯ��
   //D:\\angelinus\\jsp\\EclipseWebSpps\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\FileUploadApp\\upload  
   String path = ctx.getRealPath("upload"); //���� ��θ� String������ ����
   int max = 5*1024*1024;// 5MB�� �����ϱ����� int�� ����
   MultipartRequest multi = new MultipartRequest(request, path, max, "euc-kr", new DefaultFileRenamePolicy()); 
   // request+upload����� ���� ��ü, ���⼭�� ��ť��Ʈ�� 5��° �����ڸ� �̿�(��û,���,�ִ������,���ڵ�Ÿ��,���ϸ����� �ȷ��ð�ü ����)
   
   //out.println(request.getParameter("user")); //���ڿ� �� ���۵ǳ� Ȯ��, ������ ��Ƽ��Ʈ�� �����Ѵٰ� �߱� ������ ������Ʈ�����δ� �ȵ�
   out.println(multi.getParameter("user") + "<br/>");
   out.println(multi.getParameter("title") + "<br/>");
   
   Enumeration enumer = multi.getParameterNames();
   while(enumer.hasMoreElements()) //�����Ͱ� �ִ��� ������ �˻�
   {
	   String name = (String)enumer.nextElement();
	   out.println(multi.getParameter(name) + "<br/>");
   }
   
   
   enumer = multi.getFileNames();
   while(enumer.hasMoreElements())
   {
	   String name = (String)enumer.nextElement();
	   out.println("���� ���ϸ�  : " + multi.getOriginalFileName(name) + "<br/>");
	   out.println("����� ���ϸ�  : " + multi.getFilesystemName(name) + "<br/>");
	   out.println("���� Ÿ��  : " + multi.getContentType(name) + "<br/>");
	   
	   File f = multi.getFile(name);
	   out.println("������ ũ�� : " + f.length() + "byte <br/>");
	   out.println("������ ��� : " + f.getPath() + "byte <br/>");
	   
	   f.delete();
   }
   
   
   
   
   
   
   
   
   
%>