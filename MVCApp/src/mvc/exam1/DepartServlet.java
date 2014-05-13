package mvc.exam1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DepartServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	 {

		doPost(req, resp);
	 
	 }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String param = req.getParameter("depart");
		
		ArrayList advice = new DepartAdvice().getAdvice(param);
		
		req.setAttribute("advice", advice);  //실장이 탁자에 던져줌
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/views/result.jsp");  //누가 결과값을 가져갈지 정하는것
		view.forward(req, resp); //던져논 값 가져감
	}

	
}
