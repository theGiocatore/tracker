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
					<input type="text" id="username" name="username" class="form-control" data-parsley-length="[6, 20]" data-parsley-group="block1" >
				</div>
				<div class="form-group">
					<label for="password">Password:</label> 
					<input type="password" id="password" name="password" class="form-control" data-parsley-length="[6, 20]" data-parsley-group="block1">
				</div>
				<div class="form-group">
					<label for="firstname">First name:</label> 
					<input type="text" id="firstname" name="firstname" class="form-control" data-parsley-length="[2, 35]" data-parsley-group="block2">
				</div>
				<div class="form-group">
					<label for="lastname">Last name:</label> 
					<input type="text" id="lastname" name="lastname" class="form-control" data-parsley-length="[2, 35]" data-parsley-group="block2">
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
				<button style="padding: 1rem 4rem; color: white; background-color: black;" type="submit" >Register</button>
			</div>
		</form>
		
	</div>
	
	
<script>
	
$(function () {
	$(function () {
		  $('.contactForm').parsley().on('form:validate', function (formInstance) {
		    var ok = formInstance.isValid({group: 'block1', force: true}) && formInstance.isValid({group: 'block2', force: true});
		    $('.invalid-form-error-message')
		      .html(ok ? '' : 'You must correctly fill all the fields!')
		      .toggleClass('filled', !ok);
		    if (!ok)
		      formInstance.validationResult = false;
		  });
		});
});
</script>


</body>
</html>