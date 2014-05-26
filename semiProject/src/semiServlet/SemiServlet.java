package semiServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SemiServlet
 */
@WebServlet("/SemiServlet.do")
public class SemiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public SemiServlet() {
    
     
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url ="";
		System.out.println("test");
		String s = request.getParameter("num");
		if("1".equals(s)){
			System.out.println();
			url = "?url=../addsawon/addSawon.html";
		}
		response.sendRedirect("/semiProject/main/main.jsp"+url);
	}

}
