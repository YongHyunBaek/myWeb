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
    	System.out.println("�ʱ�ȭ �޼ҵ� �����");
        
        //ServletContext�� �ʱ� �Ķ���� �� �б�
        company = getServletContext().getInitParameter("company");
        manager = getServletContext().getInitParameter("manager");
        
        //servletConfig�� �ʱ� �Ķ���� �� �б�
        tel = getServletConfig().getInitParameter("tel");
        email = getServletConfig().getInitParameter("email");
    	System.out.println("LifeServlet�� ������ ȣ���...");
    }

	@Override
	//LifeServlet�� �ʱ�ȭ �۾��� ����Ѵ�. Servlet��ü ���� �� �� �ѹ� ���� ��
    public void init() throws ServletException{
		System.out.println("init() ȣ���...");
	}
	
	@Override
	//LifeServlet ��ü�� WAS���� �Ҹ�� �� �����.
	public void destroy() {
		System.out.println("destory() ȣ���...");
	}
	
	@Override
	//Ŭ���̾�Ʈ�� ���� ��û�� ������ ���� ȣ��ȴ�.
	protected void service(HttpServletRequest req,
			HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setContentType("text/html;charset=UTF-8");
	       PrintWriter out = resp.getWriter();
	       System.out.println("Service() ȣ���...");
	       try {
	         resp.setContentType("text/html;charset=euc-kr");
	         out.println("<html>");
	         out.println("<body>");
	         out.println("<li>ȸ��� : " + company + "</li>");
	         out.println("<li>����� : " + manager + "</li>");
	         out.println("<li>��ȭ��ȣ : " + tel + "</li>");
	         out.println("<li>�̸��� : " + email + "</li>");
	         out.println("</body>");
	         out.println("</html>");

	      }finally{
	         out.close();
	      } 

	}
}
