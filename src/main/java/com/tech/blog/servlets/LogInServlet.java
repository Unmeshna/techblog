package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.connectionProvider;

/**
 * Servlet implementation class LogInServlet
 */
@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String userEmail=request.getParameter("email");
		String userPassword=request.getParameter("password");
		UserDao dao=new UserDao(connectionProvider.getConnection());
		User u=dao.getUserByEmailAndPassword(userEmail, userPassword);
		if(u==null) {
		Message m=new Message("Invalid Input...try again!","error","alert-danger");
		HttpSession s=request.getSession();
		s.setAttribute("msg", m);
		response.sendRedirect("logIn.jsp");
			
			//out.println("Invalid Details...try again!");
		}else {
			HttpSession s=request.getSession();
			s.setAttribute("currentUser",u);
			response.sendRedirect("profile.jsp");
			
		}
		doGet(request, response);
	}

}
