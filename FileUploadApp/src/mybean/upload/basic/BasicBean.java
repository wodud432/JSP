package mybean.upload.basic;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.GenericServlet;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.jmx.snmp.Enumerated;

public class BasicBean 
{
	private MultipartRequest multi;
	private String path; //서버상의 실제경로 설정 변수
	private int max; //업로드 할 최대 크기의 변수 
	private String encType; //인코딩 문자의 변수
	
	
	
	public void setPath(HttpServletRequest servlet, String path)
	{
		this.path = servlet.getServletContext().getRealPath(path); 
//실제경로를 지정하기 위해서 GenericServlet servlet타입을 선언하고  servlet.getServletContext().getRealPath(path) 를 생성 
//하지만  GenericServlet는 basic_proc에서 받을 수 없기 때문에 HttpServletRequest servlet로 변경
	}
	
	public void setMax(int max)
	{
		this.max = max;
	}
	
	public void setEncType(String encType)
	{
		this.encType = encType;
	}
	
	public void setMulti(HttpServletRequest req)
	{
		try{
		multi = new MultipartRequest(req, path, max, encType, new DefaultFileRenamePolicy());
	}
		catch(IOException err)
		{
			System.out.println("setMulti : " + err);
			
		}
	}

	public String getUser() {
		return multi.getParameter("user");
	}

	public String getTitle() {
		return multi.getParameter("title");
	}

	public String getUpFile()
	{
		String result = "";
		Enumeration enumer = multi.getFileNames();
		while(enumer.hasMoreElements())
		{
			String name = (String)enumer.nextElement();
			
			result = "실제 파일명 : " + multi.getOriginalFileName(name) + "<br/>";
			result = "저장될 파일명 : " + multi.getFilesystemName(name) + "<br/>";
			result = "파일 타입 : " + multi.getContentType(name) + "<br/>";
			
			File f = multi.getFile(name);
			result += "파일의 크기 : " + f.length() + "byte <br/>";
			result += "파일 경로 : " + f.getPath();
		}
		
		return result;
	}

	
	
}
