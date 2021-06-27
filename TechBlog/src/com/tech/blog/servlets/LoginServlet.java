package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.dao.UserDAO;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

public class LoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		PrintWriter out = resp.getWriter();
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		UserDAO userDAO = new UserDAO(ConnectionProvider.getConnection());
		User user = userDAO.getUserByEmailAndPassword(email, password);
		if(user==null)
		{
			out.println("<h1>Invalid credentials</h1>");
			req.getRequestDispatcher("login_page.jsp").include(req, resp);
		}
		
		else
		{
			HttpSession session = req.getSession();
			session.setAttribute("user", user);
			resp.sendRedirect("profile.jsp");
		}
	}
}
