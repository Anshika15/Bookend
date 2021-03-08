package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.UserDAO;
import com.User.UserDetails;
import com.jdbc.DbConnection;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");

		UserDetails obj = new UserDetails();
		obj.setEmail(email);
		obj.setPassword(password);

		UserDAO dao = new UserDAO(DbConnection.getConn());
		boolean flag = dao.loginUser(obj);
		if (flag) {
			response.sendRedirect("Home.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("login-failed", "Invalid usename and password");
			response.sendRedirect("login.jsp");
		}
	}

}
