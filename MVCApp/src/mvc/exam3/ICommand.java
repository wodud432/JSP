package mvc.exam3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Ŀ�ǵ� ������ ���� �������̽� ����(2) //����� ���ϵ��� �𸣱⶧���� object�� ����
public interface ICommand {
	public Object processCommand(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException;
	
}
