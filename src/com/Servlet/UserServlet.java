package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.UserDAO;
import com.User.UserDetails;
import com.jdbc.DbConnection;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("fname");
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");

		UserDetails obj = new UserDetails();
		obj.setName(name);
		obj.setEmail(email);
		obj.setPassword(password);

		UserDAO dao = new UserDAO(DbConnection.getConn());
		boolean flag = dao.addUser(obj);
		HttpSession session;
		if (flag) {
			session = request.getSession();
			session.setAttribute("reg-success", "Registration Sucessful");
			response.sendRedirect("register.jsp");
		} 
		
		else {
			session = request.getSession();
			session.setAttribute("failed-msg", "Something went wrong");
			response.sendRedirect("register.jsp");
		}
		
	}

}
