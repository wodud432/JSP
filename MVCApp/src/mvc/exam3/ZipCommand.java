package mvc.exam3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ZipCommand implements ICommand {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		Vector v = new Vector();
		
		DBConnectionMgr pool = null;
		Connection con = null;//db연결을 위한 connection객체
		PreparedStatement stmt = null;//db에 명령하기 위한 객체 Statement
		ResultSet rs = null;//db에서 불러온 결과를 임시로 저장하기 위한 객체

		String dong = req.getParameter("dong");
		System.out.println(dong);
		String sql = "select * from tblzip where dong like '%"+ dong + "%'";
		
		try
		{
			
			pool = DBConnectionMgr.getInstance();
			con = pool.getConnection();
			stmt=con.prepareStatement(sql);
			
			rs=stmt.executeQuery();
			
			while(rs.next())
			{
				ZipDto zip = new ZipDto();
				zip.setBunji(rs.getString("bunji"));
				zip.setDong(rs.getString("dong"));
				zip.setGugun(rs.getString("gugun"));
				zip.setSido(rs.getString("sido"));
				zip.setZipcode(rs.getString("zipcode"));
				
				v.add(zip);
				
			}
			
		}
		catch(Exception err)
		{
			System.out.println("zipCommand : " + err);
			
		}
		finally
		{
			pool.freeConnection(con, stmt, rs);
		}
		System.out.println(v.size());
		req.setAttribute("zip", v);
		return "/exam3/zipSearch.jsp";
	}

}
