package mvc.exam3;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("asdfasdf");
		
		String asdf = req.getParameter("cmd");
		String url=""; 
		
		
		if(asdf.equals("REGCONFIRM")) //가입확인창으로
		{
			
			//입력값 확인
			//입력값이 잘못되었을 경우 해당 에러페이지로 이동
			url = "/exam3/regConfirm.jsp";
		}
		else if(asdf.equals("REG"))
		{
			url = "/exam3/regForm.html";	
		}
		
		else if(asdf.equals("REGCOMPLETE")) //가입 완료창으로
		{		
			//db 연동 데이터 저장
			url = "/exam3/regComplete.jsp";
			
		}
		
		else if(asdf.equals("MAIN")) //메인창으로
		{			
			
			url = "/exam3/index.jsp";
		}
		else
		{
			//비정상적인 경로로 접속(요청)이 들어왔을경우 예외처리
		}
		
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp); //(7)실제로 일을 시킴
		
	}

	
	
}
