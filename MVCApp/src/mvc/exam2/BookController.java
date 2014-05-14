package mvc.exam2;

import java.io.IOException;
import java.util.StringTokenizer;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BookController extends HttpServlet {

	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession s = req.getSession(); //
		
//		Vector<BookDto> bookList = new Vector<>(); //(2)��ٱ��� ����
		Vector<BookDto> bookList = (Vector<BookDto>)s.getAttribute("cart"); //
		req.setCharacterEncoding("euc-kr");//(9)
		
		
		System.out.println("servlet test");

		
		String cmd = req.getParameter("command");  //(1)
		
			
		if(cmd.equals("CHK")) //(4)
			{ 
				RequestDispatcher view = req.getRequestDispatcher("/exam2/checkout.jsp"); //(6)�������� �Ͻ�ų�� ����
				view.forward(req, resp); //(7)������ ���� ��Ŵ
			} 
		else{
			if(cmd.equals("ADD")) //(3)
			{
				if(bookList == null)
				{				
					bookList = new Vector<BookDto>();
				}
				bookList.add(getBook(req));  //��ٱ��� ���������� ������ ��� -> cart.jsp�� �����ؼ� �ű⼭ �ѷ��ְ� �ؾߵ�
			}
			 
			else if(cmd.equals("DEL"))
			{
				bookList.remove(Integer.parseInt(req.getParameter("index")));
				
			}
			
			s.setAttribute("cart", bookList); //(8)
			RequestDispatcher view = req.getRequestDispatcher("/exam2/bookShop.jsp"); //(6)�������� �Ͻ�ų�� ����(bookShop.jsp����)
			view.forward(req, resp); //(7)������ ���� ��Ŵ			
		}
	}
	public BookDto getBook(HttpServletRequest req) //(5) Ŭ���̾�Ʈ�� ������ 2���� ������(å����, �۰�, ���� + ����) �� 4���� �ɰ��� dto�� ����
	{
		
		String book = req.getParameter("book");
		String qty = req.getParameter("quantity").trim();
		
		
		
		StringTokenizer token = new StringTokenizer(book, "/"); //�ϳ��� ���ڿ��� 3���� �и�
		String title = token.nextToken().trim();//�и��� ���ڿ��� ��Ʈ������ ����
		String author = token.nextToken().trim();
		String price = token.nextToken().trim();
		
		BookDto dto = new BookDto();
		dto.setAuthor(author);  //�ɰ��� dto�� ����
		dto.setPrice(Integer.parseInt(price));
		dto.setQuantity(Integer.parseInt(qty));
		dto.setTitle(title);
	
		return dto;
	}

}
