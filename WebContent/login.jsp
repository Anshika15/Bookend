<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Login</title>
<%@ include file="allComp/allLinks.jsp"%>
</head>

<body>

	<%@include file="allComp/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card-header text-center bg-custom text-white">
						<i class="fa fa-user-circle-o fa-3x" aria-hidden="true"></i>
						<h4>Login</h4>
					</div>

					<%
						String msg = (String) session.getAttribute("login-failed");
						if (msg != null) {
					%>


					<div class="alert alert-danger" role="alert"><%=msg%></div>

					<%
						session.removeAttribute("login-failed");
						}
					%>

					<%
						String withoutlogin = (String) session.getAttribute("Login-error");
						if (withoutlogin != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=withoutlogin%></div>
					<%
						session.removeAttribute("Login-error");
						}
					%>


					<%
						String logoutmsg = (String) session.getAttribute("logout-msg");
						if (logoutmsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=logoutmsg%></div>
					<%
						session.removeAttribute("logout-msg");
						}
					%>

					<div class="card-body">
						<form action="LoginServlet" method="post">
							<div class="form-group">
								<input type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="uemail">
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Enter Password"
									name="upassword">
							</div>
							<button type="submit"
								class="btn btn-primary bagde-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="allComp/footer.jsp"%>
</html>