package mvc.exam3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//커맨드 패턴을 위한 인터페이스 생성(2) //어떤값이 리턴될지 모르기때문에 object로 생성
public interface ICommand {
	public Object processCommand(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException;
	
}
