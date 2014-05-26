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
	private int counter =1; //(5)�غ�� �޼����� ���ʷ� ������ �ְ� ��
	
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
	String task = req.getParameter("task"); //(4) html���� �Ķ���͸� �޾ƿ��� ����
	
	if("reset".equals(task)) //(6)
	{
		counter = 1;
	
	}
	else
	{
	
		switch(counter)
		{
		case 1:
			message = "��������"; break;
		case 2:
			message = "��������"; break;
		case 3:
			message = "����������"; break;
		case 4:
			message = "���"; break;
		case 5:
			message = "�����"; break;
		case 6:
			message = "��������4��"; break;
		
		}
		counter++;
	}
	
	res = "<message>" + message + "</message>"; //(7)
	out.println("<response>");
	out.println(res);
	out.println("</response>");
	
}


}

