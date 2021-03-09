<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	UserDetails user2 = (UserDetails) session.getAttribute("userD");
	if (user2 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("Login-error", "Please login first");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<%@ include file="allComp/allLinks.jsp"%>
</head>

<body>
	<%@ include file="allComp/navbar.jsp"%>
	<div class="container-fluid">

		<div class="card py-5">
			<div class="card-body text-center">
				<img alt="notes" src="img/paper.png" class="img-fluid mx-auto"
					style="max-width: 450px;">
				<h1>Add Your Notes</h1>
				<a href="addNotes.jsp" class="btn btn-outline-primary">Start
					here</a>
			</div>
		</div>
	</div>
	
	<%@include file="allComp/footer.jsp"%>
	
</body>
</html>