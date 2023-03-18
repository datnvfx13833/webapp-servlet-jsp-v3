package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Account;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		processRequest(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			request.getSession(true).invalidate();
			
			String regexMail = "^[A-Z0-9_a-z] + @[A-Z0-9\\.a-z] + \\.[A-Za-z]{2,6}$";
			String regex ="[a-zA-Z0-9_!@#$%^&*]+";
			String user = request.getParameter("username");
			String password = request.getParameter("password");
			Account account = new Account();
			account.setName(user);
			account.setPwd(password);
			HttpSession session = request.getSession(true);
			//if(!password.matches(regex)||!user.matches(regexMail)) {
				//session.setAttribute("error", "Invalid syntax");
				//response.sendRedirect("login.jsp");
			//}
			
			String uid = getServletContext().getInitParameter("username");
			String pwd = getServletContext().getInitParameter("password");
			if (user != null && account.getPwd().equals(pwd)&&account.getName().equalsIgnoreCase(uid)) {
				session.setAttribute("user", user);				
				response.sendRedirect("admin/index.jsp");
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				response.getWriter().println("<script type=\"text/javascript\">");
				response.getWriter().println("alert('User or password is invalid')");
				response.getWriter().println("location='login.jsp'");
				response.getWriter().println("</script>");
				rd.include(request, response);
				
			}
		}
		catch (NullPointerException e) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} catch (Exception ex) {
			response.getWriter().println(ex);
		}
	}

}
