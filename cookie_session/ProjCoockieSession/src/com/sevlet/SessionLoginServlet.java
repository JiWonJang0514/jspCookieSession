package com.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionLoginServlet
 */
@WebServlet("/sessionLogin")
public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8"); 

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		if(id.equals("admin") && pwd.equals("1234")){

			HttpSession session = request.getSession();
			session.setAttribute("logOK", id);
			
			response.sendRedirect(request.getContextPath() + "/servlet_session/sessionLoginForm.jsp");
		}else{

			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('로그인에 실패하였습니다.');");
			out.print("history.go(-1);");
			out.print("</script>");
		}
	}

}
