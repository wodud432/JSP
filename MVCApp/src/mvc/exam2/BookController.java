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
		
//		Vector<BookDto> bookList = new Vector<>(); //(2)장바구니 생성
		Vector<BookDto> bookList = (Vector<BookDto>)s.getAttribute("cart"); //
		req.setCharacterEncoding("euc-kr");//(9)
		
		
		System.out.println("servlet test");

		
		String cmd = req.getParameter("command");  //(1)
		
			
		if(cmd.equals("CHK")) //(4)
			{ 
				RequestDispatcher view = req.getRequestDispatcher("/exam2/checkout.jsp"); //(6)누구에게 일시킬지 정함
				view.forward(req, resp); //(7)실제로 일을 시킴
			} 
		else{
			if(cmd.equals("ADD")) //(3)
			{
				if(bookList == null)
				{				
					bookList = new Vector<BookDto>();
				}
				bookList.add(getBook(req));  //장바구니 누를때마다 물건이 담김 -> cart.jsp에 전달해서 거기서 뿌려주게 해야됨
			}
			 
			else if(cmd.equals("DEL"))
			{
				bookList.remove(Integer.parseInt(req.getParameter("index")));
				
			}
			
			s.setAttribute("cart", bookList); //(8)
			RequestDispatcher view = req.getRequestDispatcher("/exam2/bookShop.jsp"); //(6)누구에게 일시킬지 정함(bookShop.jsp에게)
			view.forward(req, resp); //(7)실제로 일을 시킴			
		}
	}
	public BookDto getBook(HttpServletRequest req) //(5) 클라이언트가 보내온 2개의 데이터(책제목, 작가, 가격 + 수량) 를 4개로 쪼개서 dto에 담음
	{
		
		String book = req.getParameter("book");
		String qty = req.getParameter("quantity").trim();
		
		
		
		StringTokenizer token = new StringTokenizer(book, "/"); //하나의 문자열을 3개로 분리
		String title = token.nextToken().trim();//분리한 문자열을 스트링으로 저장
		String author = token.nextToken().trim();
		String price = token.nextToken().trim();
		
		BookDto dto = new BookDto();
		dto.setAuthor(author);  //쪼갠걸 dto에 보냄
		dto.setPrice(Integer.parseInt(price));
		dto.setQuantity(Integer.parseInt(qty));
		dto.setTitle(title);
	
		return dto;
	}

}
