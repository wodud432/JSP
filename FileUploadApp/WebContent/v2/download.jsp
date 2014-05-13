
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
//multiFile_proc.jsp에서 이동해온 페이지

String path = request.getParameter("path");
String name = request.getParameter("name");

String realPath = getServletContext().getRealPath(path);//path로 넘겨받은 경로의 실제경로
		
//response.setContentType("application/x-msdownload"); //보내는게 어떤파일인지 형식을 미리 저장할 수 있다(mime type)
response.setContentType("Application.octet-stream"); //데이터를 1바이트씩 쪼개서 보냄 스트림방식으로
response.setHeader("Content-Disposition", "attachment;filename="+name);

//File file = new File(realPath + "/" + name);
File file = new File(realPath + "/" + new String(name.getBytes("8859_1"), "euc-kr")); //인코딩방식 변경 (한글이름 파일 깨지기때문에)
byte[] data = new byte[1024];  //1024바이트 모아서 한꺼번에 가져오기

if(file.isFile())
{
	try
	{
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));  
		//바이트 단위로 처리해야 되기 때문에  FileInputStream 읽어들일 준비만함
		
		BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
		// 다운받고자하는 상대방의 위치에 출력(다운받게함) 출력할 준비만함 
		
		int read = bis.read(data);//1024바이트 모아서 한꺼번에 가져오기 실질적으로 다운시작
		System.out.println(read);
		while(read != -1)  //-1 데이터의 끝을 나타내는 기호
		{
			bos.write(data, 0, read);  //1024씩 끊어서 계속출력 끝날때까지
			read = bis.read(data);  //또 읽어들임
		}
		
		bos.flush();//버퍼에 모아둔것을 클라이언트에게 방출
		bos.close();
		bis.close();
	}
	catch(Exception err)
	{
		err.printStackTrace();
	}
}
%>