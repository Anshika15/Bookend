<%@page import="com.jdbc.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	UserDetails user5 = (UserDetails) session.getAttribute("userD");
	if (user5 != null) {
		response.sendRedirect("Home.jsp");
		//session.setAttribute("Login-error", "Please login first");
	}
%>


<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Home Page</title>
<%@ include file="allComp/allLinks.jsp"%>
</head>
<body>
	<%@ include file="allComp/navbar.jsp"%>

	<div class="container-fluid back-img">
		<br />
		<br />
		<div class="text-center">
			<h1 class="text-white" style="font-weight: 950;">
				<i class="fa fa-book" aria-hidden="true"></i>Bookend - Save Your
				Notes!
			</h1>
			<a href="login.jsp" class="btn btn-light"><i
				class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a> <a
				href="register.jsp" class="btn btn-light"><i
				class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
		</div>
	</div>

	<%@ include file="allComp/footer.jsp"%>
</body>
</html>