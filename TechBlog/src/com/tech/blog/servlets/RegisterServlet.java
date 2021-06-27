package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tech.blog.dao.UserDAO;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

@MultipartConfig
public class RegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		PrintWriter out = resp.getWriter();
		// fetch all form data
		String check = req.getParameter("check");
		if(check==null)
		{
			out.println("Please agree terms and conditions");
		}
		else
		{
			String name = req.getParameter("name");
			String gender = req.getParameter("gender");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			String about = req.getParameter("about");
			
			// Create user object and set all data to that object
			User user = new User(name,gender,email,password,about);
			
			// Create user DAO object 
			UserDAO dao = new UserDAO(ConnectionProvider.getConnection());
			if(dao.saveUser(user))
			{
				out.println("<h1>Done</h1>");
			}
			
			else
			{
				out.println("<h1>Error!!</h1>");
			}
		}
	}
}
