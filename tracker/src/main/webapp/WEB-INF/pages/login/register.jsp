<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
	<title>Create a new account</title>
</head>
<body>
	<div class="regDiv">
		<h2>Create a new account</h2>
		<hr>
		<form data-parsley-validate="" class="contactForm" id="contactForm" method="POST" action="save-user" role="form">
			<div class="modal-body">
				<div class="form-group">
					<label for="username">Userame:</label> 
					<input type="text" id="username" name="username" class="form-control" data-parsley-length="[6, 20]" required>
				</div>
				<div class="form-group">
					<label for="password">Password:</label> 
					<input type="password" id="password" name="password" class="form-control" data-parsley-length="[6, 20]" required>
				</div>
				<div class="form-group">
					<label for="password2">Re-type password:</label> 
					<input type="password" id="password2" name="password2" class="form-control" required>
					<small class="text-danger" id="alert1">Password doesn't match!</small>
				</div>
				<div class="form-group">
					<label for="firstname">First name:</label> 
					<input type="text" id="firstname" name="firstname" class="form-control" data-parsley-length="[2, 35]" required >
				</div>
				<div class="form-group">
					<label for="lastname">Last name:</label> 
					<input type="text" id="lastname" name="lastname" class="form-control" data-parsley-length="[2, 35]" required>
				</div>
				<div class="form-group">
					<label for="dateofbirth">Date of birth:</label> 
					<input type="date" id="dateofbirth" name="dateofbirth" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="email">E-mail:</label> 
					<input type="email" id="email" name="email" class="form-control" required>
				</div>
			</div>
			<div class="form-actions modal-footer">
				<small><a class="regLink nav-link" href="login">You already have an account? Log in here!</a></small>
				<button class="subBtn" id="submitBtn"  type="submit" >Register</button>
			</div>
		</form>
		
	</div>


	<script>
	
		
		$('input').keyup(function() {

			var pass1 = $('input[name=password]').val();
			var pass2 = $('input[name=password2]').val();
			var alert = $('#alert1');
			var bgc = $('#password2');
			var bttn = $('#submitBtn');
			
			  if (pass1 != pass2) {
				  	alert.css("display", "block");
				  	bgc.css('background-color', '#F2DEDE');
				  	bttn.prop('disabled', true);
			    }
			    else {
			    	alert.css("display", "none");
			    	bgc.css('background-color', '#DFF0D8');
			    	bttn.prop('disabled', false);
			    }
			});
	
		
	</script>


</body>
</html>