package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.PostDAO;
import com.User.Post;
import com.jdbc.DbConnection;

@WebServlet("/AddNotesServlet")
public class AddNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddNotesServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int uid = Integer.parseInt(request.getParameter("uid"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		PostDAO obj = new PostDAO(DbConnection.getConn());
		boolean flag = obj.AddNotes(title, content, uid);
		if (flag) {
			System.out.println("data inserted succesfully");
			response.sendRedirect("showNotes.jsp");
		} else {
			System.out.println("data not inserted succesfully");
		}
	}

}
