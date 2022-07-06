package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class LoginCheck extends HttpServlet {
	protected void processRequest(HttpServletRequest request,
									HttpServletResponse response)
						throws ServletException, IOException{
				request.setCharacterEncoding("utf-8");
				String id = request.getParameter("id");
				String pwd = request.getParameter("pwd");
				
			      try {
			          Class.forName("oracle.jdbc.driver.OracleDriver");
			       }catch(ClassNotFoundException cnfe) {
			          cnfe.printStackTrace();
			          System.out.println("드라이버 로딩 실패");
			       }
			       Connection conn=null;
			       PreparedStatement pstmt = null;
			       ResultSet rs = null;
			       try {
			          conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XEPDB1", "mytest", "mytest");
			          pstmt = conn.prepareStatement("select pass from login where id=?");
			          pstmt.setString(1, id);
			          rs = pstmt.executeQuery();
			          if(rs.next()) {
			             String dbPass = rs.getString("pass");
			             if(pwd.equals(dbPass)) {
			                HttpSession session = request.getSession();
			                session.setAttribute("user", id);
			                System.out.println("로그인 성공");
			             }else {
			                System.out.println("비밀번호 틀림");
			             }
			          }else {
			             System.out.println("아이디 없음");
			          }
			       }catch(SQLException sqle) {
			          sqle.printStackTrace();
			          System.out.println("쿼리문이 틀렸음");
			       }finally {
			          
			       }
			       response.sendRedirect("Login");
			    }
					
				
				
				@Override
				protected void doGet(HttpServletRequest request,
										HttpServletResponse response)
								throws ServletException, IOException{
						processRequest(request, response);
				}
				
				@Override
				protected void doPost(HttpServletRequest request,
										HttpServletResponse response)
								throws ServletException, IOException{
							processRequest(request, response);
				
	}
}
