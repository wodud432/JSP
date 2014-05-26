package mvc.exam3;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		/*
		String asdf = req.getParameter("cmd");
		String url=""; 
		
		CommandFactory cp = CommandFactory.getFactory();
		ICommand iCmd = cp.createCommand(asdf);
		
	
					
		url = (String)iCmd.processCommand(req, resp);
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp); 
		*/
		
		String asdf = req.getParameter("cmd");
		String url=""; 
		System.out.println(asdf);
		HttpSession session = req.getSession(); // 중복가입 방지하기위해 세션 추가함
		String current = (String)session.getAttribute("currentState");
		
//		if(current != null && current.equals("COMPLETE"))
//		{
//			url = "/exam3/alreadyRegister.jsp";  //중복가입이면 중복이라는 페이지로 이동
//		}
//		else
//		{			
			CommandFactory cp = CommandFactory.getFactory();
			ICommand iCmd = cp.createCommand(asdf);
			url = (String)iCmd.processCommand(req, resp);
		
//		}			
		
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp); 
		}
		
		
	

	
	
}
