package jstlel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/02")
public class Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    /**
     * 1. 객체의 Scope(존속범위)
     * 	  객체의 존재 범위
     * 
     * 2. 객체가 오래 존속하는 순서
     * 	  Application(Context) Scope > Session Scope > Request Scope > Page Scope
     * 
     * 3. EL의 이름(name)으로 객체를 찾는 순서
     * 	  Application(Context) Scope < Session Scope < Request Scope < Page Scope
     * 
     * (주의) 같은 이름으로 여러 존속 Scope에  객체를 저장하는 경우 주의가 필요
     */
	
		// Application Scope
		UserVo vo1 = new UserVo();
		vo1.setId(1L);
		vo1.setName("둘리1");
		request.getServletContext().setAttribute("vo", vo1);
		
		// Session Scope
		UserVo vo2 = new UserVo();
		vo2.setId(2L);
		vo2.setName("둘리2");
		request.getSession(true).setAttribute("vo", vo2);
		
		// Request Scope
		UserVo vo3 = new UserVo();
		vo3.setId(3L);
		vo3.setName("둘리3");
		request.setAttribute("vo", vo3);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
