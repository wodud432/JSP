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
		
		
		if(asdf.equals("REGCONFIRM")) //����Ȯ��â����
		{
			
			//�Է°� Ȯ��
			//�Է°��� �߸��Ǿ��� ��� �ش� ������������ �̵�
			url = "/exam3/regConfirm.jsp";
		}
		else if(asdf.equals("REG"))
		{
			url = "/exam3/regForm.html";	
		}
		
		else if(asdf.equals("REGCOMPLETE")) //���� �Ϸ�â����
		{		
			//db ���� ������ ����
			url = "/exam3/regComplete.jsp";
			
		}
		
		else if(asdf.equals("MAIN")) //����â����
		{			
			
			url = "/exam3/index.jsp";
		}
		else
		{
			//���������� ��η� ����(��û)�� ��������� ����ó��
		}
		
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp); //(7)������ ���� ��Ŵ
		
	}

	
	
}
