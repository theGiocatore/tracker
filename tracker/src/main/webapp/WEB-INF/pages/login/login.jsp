<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix= "c" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Log in</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">	
	<link href="https://fonts.googleapis.com/css?family=Gotu&display=swap" rel="stylesheet">
	<link rel="stylesheet"  href="../../tracker/css/style.css">	
</head>
<body>
	<div class="loginDiv">
		<span class="text-danger">${SPRING_SECURITY_LAST_EXCEPTION.message}</span>
		<form class="contactForm" id="contactForm" method="POST" action="login" role="form">
			<div class="modal-body">
				<div class="form-group">
					<label for="username">Userame:</label> 
					<input type="text" id="username" name="username" class="form-control">
				</div>
				<div class="form-group">
					<label for="password">Password:</label> 
					<input type="password" id="password" name="password" class="form-control">
					<small class="forPass"><a href="resetpass"><em class="nav-link smallTxt">Forgot your password?</em></a></small>
				</div>
			</div>
			<p><a class="smallTxt nav-link" href="register">Create a new account!</a></p>
			<div class="form-actions modal-footer">
				<button class="subBtn" type="submit" id="id" name="id">Log in</button>
			</div>
		</form>
	</div>
</body>
</html>