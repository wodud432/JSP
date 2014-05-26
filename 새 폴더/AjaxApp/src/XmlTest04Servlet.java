import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class XmlTest04Servlet extends HttpServlet
{
	private int counter =1; //(5)준비된 메세지를 차례로 보낼수 있게 함
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	doPost(req, resp);
}


@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	
	
	resp.setContentType("text/xml");
	resp.setCharacterEncoding("utf-8");
	resp.setHeader("Cache-control", "no-cache");

	
	PrintWriter out = resp.getWriter();  //(1)
	
	String res = ""; //(2)
	String message = ""; //(3)
	String task = req.getParameter("task"); //(4) html에서 파라미터를 받아오는 변수
	
	if("reset".equals(task)) //(6)
	{
		counter = 1;
	
	}
	else
	{
	
		switch(counter)
		{
		case 1:
			message = "ㅁㄴㅇㄹ"; break;
		case 2:
			message = "ㅂㄷㅈㄱ"; break;
		case 3:
			message = "ㄴㅁㄹㅇㅎ"; break;
		case 4:
			message = "어ㅗ"; break;
		case 5:
			message = "ㅇ쇼ㅓ"; break;
		case 6:
			message = "ㅂㅁㅈㄷ4소"; break;
		
		}
		counter++;
	}
	
	res = "<message>" + message + "</message>"; //(7)
	out.println("<response>");
	out.println(res);
	out.println("</response>");
	
}


}

