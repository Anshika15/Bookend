<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/bookend.jpg");
	width: 100%;
	height: 87vh;
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>

<meta charset="UTF-8">
<title>Home Page</title>
<%@ include file="allComp/allLinks.jsp"%>
</head>
<body>
	<%@ include file="allComp/navbar.jsp"%>
	<div class="container-fluid back-img">
		<br />
		<div class="text-center">
			<h1 class="text-white" style="font-weight:950;"><i class="fa fa-book" aria-hidden="true"></i>Bookend - Save Your Notes!</h1>
			<a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a> 
			<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
		</div>
	</div>

	<%@ include file="allComp/footer.jsp"%>
</body>
</html>