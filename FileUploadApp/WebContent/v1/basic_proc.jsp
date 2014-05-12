<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<%
   ServletContext ctx = getServletContext();//현재 만들어져있는 프로젝트에 대한 기본적인 정보를 담음
   //out.println(ctx.getRealPath("upload")); //파일 업로드가 실제 동작을 하는 경로확인
   //D:\\angelinus\\jsp\\EclipseWebSpps\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\FileUploadApp\\upload  
   String path = ctx.getRealPath("upload"); //실제 경로를 String변수에 담음
   int max = 5*1024*1024;// 5MB로 저장하기위한 int값 지정
   MultipartRequest multi = new MultipartRequest(request, path, max, "euc-kr", new DefaultFileRenamePolicy()); 
   // request+upload기능을 묶은 객체, 여기서는 도큐먼트의 5번째 생성자를 이용(요청,경로,최대사이즈,인코딩타입,파일리네임 팔러시객체 생성)
   
   //out.println(request.getParameter("user")); //문자열 잘 전송되나 확인, 폼에서 멀티파트로 전송한다고 했기 때문에 리퀘스트만으로는 안됨
   out.println(multi.getParameter("user") + "<br/>");
   out.println(multi.getParameter("title") + "<br/>");
   
   Enumeration enumer = multi.getParameterNames();
   while(enumer.hasMoreElements()) //데이터가 있는지 없는지 검사
   {
	   String name = (String)enumer.nextElement();
	   out.println(multi.getParameter(name) + "<br/>");
   }
   
   
   enumer = multi.getFileNames();
   while(enumer.hasMoreElements())
   {
	   String name = (String)enumer.nextElement();
	   out.println("실제 파일명  : " + multi.getOriginalFileName(name) + "<br/>");
	   out.println("저장될 파일명  : " + multi.getFilesystemName(name) + "<br/>");
	   out.println("파일 타입  : " + multi.getContentType(name) + "<br/>");
	   
	   File f = multi.getFile(name);
	   out.println("파일의 크기 : " + f.length() + "byte <br/>");
	   out.println("파일의 경로 : " + f.getPath() + "byte <br/>");
	   
	   f.delete();
   }
   
   
   
   
   
   
   
   
   
%>