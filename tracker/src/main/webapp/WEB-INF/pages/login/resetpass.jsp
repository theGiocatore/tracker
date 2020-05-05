<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix= "c" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">	
	<link href="https://fonts.googleapis.com/css?family=Gotu&display=swap" rel="stylesheet">
	<link rel="stylesheet"  href="../../tracker/css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>	
	<script src="../../tracker/js/parsley.min.js"></script>	
	<link rel="stylesheet"  href="../../tracker/css/parsley.css">
	<title>Reset your password</title>
</head>
<body>
	
	<div class="loginDiv">
	<h2 class="logoutTxt">Forgot your password?</h2><br>
	<h6 class="logoutTxt">Enter your email address and we'll send you a link</h6>
	<h6 class="logoutTxt"> to reset your password.</h6>
	<hr>
		<form class="contactForm" id="contactForm" method="POST" action= "" role="form">
			<div class="modal-body">
				<div class="form-group">
					<label for="username">Email address:</label> 
					<input type="email" id="email" name="email" value="" class="form-control">
				</div>				
			</div>
			<small><a class="smallTxt nav-link" href="login"><em>Back to Log In!</em></a></small>
			<div class="form-actions modal-footer">
				<button class="subBtn" type="submit" id="resetPass">Reset your password</button>
			</div>
		</form>
	</div>
	
<script>

$(document).ready(function(){
	
	$('.subBtn').on('click', function(){
		var mail = $('#email').val();
		console.log(mail);
		$.ajax({
			type:'POST',
			url:"reset-password/" + mail,
			success: function(){
				alert("Please check your email !");
				}
			});
			
	})
 });

</script>
	
</body>
</html>