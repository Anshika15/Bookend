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
					<div class="card-body">
						<form>
							<div class="form-group">
								 <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
							</div>
							<div class="form-group">
								<input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Enter Password">
							</div>
							<button type="submit" class="btn btn-primary bagde-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="allComp/footer.jsp"%>
</html>