<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">	
	<link href="https://fonts.googleapis.com/css?family=Gotu&display=swap" rel="stylesheet">
	<link rel="stylesheet"  href="../../tracker/css/style.css">	
	<title>Create a new account</title>
</head>
<body>
	<div class="regDiv">
		<h2>Create a new account</h2>
		<hr>
		<form class="contactForm" id="contactForm" method="POST" action="save-user" role="form">
			<div class="modal-body">
				<div class="form-group">
					<label for="username">Userame:</label> 
					<input type="text" id="username" name="username" class="form-control">
				</div>
				<div class="form-group">
					<label for="password">Password:</label> 
					<input type="password" id="password" name="password" class="form-control">
				</div>
				<div class="form-group">
					<label for="firstname">First name:</label> 
					<input type="text" id="firstname" name="firstname" class="form-control">
				</div>
				<div class="form-group">
					<label for="lastname">Last name:</label> 
					<input type="text" id="lastname" name="lastname" class="form-control">
				</div>
				<div class="form-group">
					<label for="dateofbirth">Date of birth:</label> 
					<input type="date" id="dateofbirth" name="dateofbirth" class="form-control">
				</div>
				<div class="form-group">
					<label for="email">E-mail:</label> 
					<input type="email" id="email" name="email" class="form-control">
				</div>
			</div>
			<div class="form-actions modal-footer">
				<small><a class="regLink nav-link" href="login">You already have an account? Log in here!</a></small>
				<button style="padding: 1rem 4rem; color: white; background-color: black;" type="submit" >Register</button>
			</div>
		</form>
		
	</div>
</body>
</html>