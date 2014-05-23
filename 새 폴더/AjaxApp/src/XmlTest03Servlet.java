import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class XmlTest03Servlet extends HttpServlet
{
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
	PrintWriter out = resp.getWriter();


	String param = req.getParameter("birthDate");
	boolean passed = isValidateDate(param);


	String msg = "당신이 입력한 날짜는 잘못 되었습니다.";
	if(passed == true){
		msg = "올바른 형식입니다.";
	}


	out.println("<response>");
	out.println("<passed>" + Boolean.toString(passed) + "</passed>");
	out.println("<message>" + msg + "</message>");
	out.println("</response>");


	out.close();
}


private boolean isValidateDate(String param){
	boolean isValid = true;


	if(param != null){
		SimpleDateFormat formatter = 
				new SimpleDateFormat("yyyy/MM/dd");
		try{
			formatter.parse(param);
		}
		catch(ParseException err){
			isValid = false;
		}
	}
	else{
		isValid = false;
	}


	return isValid;
}
}

