<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@ include file="allComp/allLinks.jsp"%>
</head>
<body>
	<%@ include file="allComp/navbar.jsp"%>
	<div class="container-fluid">
		<h1 class="text-center">
			<b>Add your notes</b>
		</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<div class="form-group">

							<%
								UserDetails obj = (UserDetails) session.getAttribute("userD");
							%>

							<input type="hidden" name="uid" value="<%=obj.getId()%>">

							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter titile here"
								name="title" required="required">
						</div>
						<div class="form-group">
							<label for="content">Enter Content</label>
							<textarea rows="6" cols="" class="form-control" id="content"
								placeholder="Enter content here" name="content" required="required"></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="allComp/footer.jsp"%>
</body>
</html>