<%@page import="com.User.Post"%>
<%@page import="com.jdbc.DbConnection"%>
<%@page import="com.Dao.PostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	UserDetails user4 = (UserDetails) session.getAttribute("userD");
	if (user4 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("Login-error", "Please login first");
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit notes</title>
<%@ include file="allComp/allLinks.jsp"%>
</head>
<body>

	<%
		Integer noteid = Integer.parseInt(request.getParameter("note_id"));

		PostDAO post = new PostDAO(DbConnection.getConn());
		Post p = post.getDataById(noteid);
	%>

	<%@ include file="allComp/navbar.jsp"%>
	<div class="container-fluid">
		<h1 class="text-center">
			<b>Edit your notes</b>
		</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="EditNotesServlet" method="post">

						<input type="hidden" value="<%=noteid%>" name="noteid">

						<div class="form-group">

							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required" value="<%=p.getTitle()%>">
						</div>
						<div class="form-group">
							<label for="content">Enter Content</label>
							<textarea rows="6" cols="" class="form-control" id="content"
								name="content" required="required"><%=p.getContent() %></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="mt-5">
	<%@include file="allComp/footer.jsp"%>
	</div>
</body>
</html>