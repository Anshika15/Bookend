<%@page import="java.util.List"%>
<%@page import="com.jdbc.DbConnection"%>
<%@page import="com.Dao.PostDAO"%>
<%@page import="com.User.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	UserDetails user3 = (UserDetails) session.getAttribute("userD");
	if (user3 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("Login-error", "Please login first");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notes Dashboard</title>
<%@ include file="allComp/allLinks.jsp"%>
</head>
<body>
	<%@ include file="allComp/navbar.jsp"%>
	<div class="container">
		<h2 class="text-center mt-3">
			<b>All Notes:</b>
		</h2>

		<div class="row">
			<div class="col-md-12">
				<%
					if (user3 != null) {
						PostDAO obj = new PostDAO(DbConnection.getConn());
						List<Post> post = obj.getData(user3.getId());
						for (Post po : post) {
				%>

				<div class="card mt-3">
					<img alt="notes image" src="img/paper.png"
						class="card-img-top mt-2 mx-auto" style="max-width: 100px;">

					<div class="card-body p-4">

						<h5 class="card-title"><%=po.getTitle() %></h5>
						<p><%=po.getContent() %></p>

						<p>
							<b class="text-success">Published By: <%= user3.getName() %></b></br> <b
								class="text-primary"></b>
						</p>

						<p>
							<b class="text-success">Published Date: <%= po.getPdate() %></b></br> <b
								class="text-success"></b>
						</p>
						<div class="container text-center mt-2">
					 <!-- 	<a href="DeleteServlet?note_id=" class="btn btn-danger">Delete</a>
							<a href="edit.jsp?note_id=" class="btn btn-primary">Edit</a> -->
						</div>

					</div>
				</div>

				<%
					}

					}
				%>



			</div>
		</div>
	</div>

</body>
</html>