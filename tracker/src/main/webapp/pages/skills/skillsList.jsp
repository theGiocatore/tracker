<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Skills</title>
</head>
<body>
<jsp:include page="../navigation/navbar.jsp" />	

	<div>
		<h1>Skills</h1>
	</div>
	<div class="col-9">
		<button class="btn btn-primary">Add</button>
		<table class="table" style="margin-top: 20px">
			<tr>
				<th>Name</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<tr>
				<td></td>
				<td><button class="btn btn-success">Edit</button></td>
				<td><button class="btn btn-danger">Delete</button></td>
			</tr>
		</table>
	</div>
</body>
</html>