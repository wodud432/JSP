
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
//multiFile_proc.jsp���� �̵��ؿ� ������

String path = request.getParameter("path");
String name = request.getParameter("name");

String realPath = getServletContext().getRealPath(path);//path�� �Ѱܹ��� ����� �������
		
//response.setContentType("application/x-msdownload"); //�����°� ��������� ������ �̸� ������ �� �ִ�(mime type)
response.setContentType("Application.octet-stream"); //�����͸� 1����Ʈ�� �ɰ��� ���� ��Ʈ���������
response.setHeader("Content-Disposition", "attachment;filename="+name);

//File file = new File(realPath + "/" + name);
File file = new File(realPath + "/" + new String(name.getBytes("8859_1"), "euc-kr")); //���ڵ���� ���� (�ѱ��̸� ���� �����⶧����)
byte[] data = new byte[1024];  //1024����Ʈ ��Ƽ� �Ѳ����� ��������

if(file.isFile())
{
	try
	{
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));  
		//����Ʈ ������ ó���ؾ� �Ǳ� ������  FileInputStream �о���� �غ���
		
		BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
		// �ٿ�ް����ϴ� ������ ��ġ�� ���(�ٿ�ް���) ����� �غ��� 
		
		int read = bis.read(data);//1024����Ʈ ��Ƽ� �Ѳ����� �������� ���������� �ٿ����
		System.out.println(read);
		while(read != -1)  //-1 �������� ���� ��Ÿ���� ��ȣ
		{
			bos.write(data, 0, read);  //1024�� ��� ������ ����������
			read = bis.read(data);  //�� �о����
		}
		
		bos.flush();//���ۿ� ��Ƶа��� Ŭ���̾�Ʈ���� ����
		bos.close();
		bis.close();
	}
	catch(Exception err)
	{
		err.printStackTrace();
	}
}
%>