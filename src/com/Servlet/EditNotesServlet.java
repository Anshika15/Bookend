package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.PostDAO;
import com.jdbc.DbConnection;

@WebServlet("/EditNotesServlet")
public class EditNotesServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			
			Integer noteid = Integer.parseInt(request.getParameter("noteid"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			PostDAO dao = new PostDAO(DbConnection.getConn());
			boolean flag = dao.PostUpdate(noteid, title, content);
			if(flag)
			{
				System.out.println("data updated successfully.");
				HttpSession session = request.getSession();
				session.setAttribute("updateMsg", "Notes updated successfully.");
				response.sendRedirect("showNotes.jsp");
			}
			else
			{
				System.out.println("data not updated");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
