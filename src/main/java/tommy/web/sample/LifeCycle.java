package tommy.web.sample;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private String company;
	   private String manager;
	   private String tel;
	   private String email;
	    
       
    public LifeCycle() {
    	System.out.println("초기화 메소드 수행됨");
        
        //ServletContext의 초기 파라미터 값 읽기
        company = getServletContext().getInitParameter("company");
        manager = getServletContext().getInitParameter("manager");
        
        //servletConfig의 초기 파라미터 값 읽기
        tel = getServletConfig().getInitParameter("tel");
        email = getServletConfig().getInitParameter("email");
    	System.out.println("LifeServlet의 생성자 호출됨...");
    }

	@Override
	//LifeServlet의 초기화 작업을 담당한다. Servlet객체 생성 시 단 한번 수행 됨
    public void init() throws ServletException{
		System.out.println("init() 호출됨...");
	}
	
	@Override
	//LifeServlet 객체가 WAS에서 소멸될 때 수행됨.
	public void destroy() {
		System.out.println("destory() 호출됨...");
	}
	
	@Override
	//클라이언트의 연결 요청이 있을때 마다 호출된다.
	protected void service(HttpServletRequest req,
			HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setContentType("text/html;charset=UTF-8");
	       PrintWriter out = resp.getWriter();
	       System.out.println("Service() 호출됨...");
	       try {
	         resp.setContentType("text/html;charset=euc-kr");
	         out.println("<html>");
	         out.println("<body>");
	         out.println("<li>회사명 : " + company + "</li>");
	         out.println("<li>담당자 : " + manager + "</li>");
	         out.println("<li>전화번호 : " + tel + "</li>");
	         out.println("<li>이메일 : " + email + "</li>");
	         out.println("</body>");
	         out.println("</html>");

	      }finally{
	         out.close();
	      } 

	}
}
