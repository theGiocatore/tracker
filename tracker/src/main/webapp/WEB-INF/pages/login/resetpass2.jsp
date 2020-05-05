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
	<title>Reset password</title>
</head>
<body>
	<div class="regDiv">
		<h2>Update your password!</h2>
		<hr>
		<form data-parsley-validate="" class="contactForm" id="contactForm" method="POST" action="save-user" role="form">
			<div class="modal-body">
				<div class="form-group">
					<label hidden="true" for="id">id:</label> 
					<input hidden="true" type="number" id="id" name="id" class="form-control">
				</div>
				<div class="form-group">
					<label hidden="true" for="username">Username:</label> 
					<input hidden="true" type="text" id="username" name="username" class="form-control">
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
					<label hidden="true" for="firstname">First name:</label> 
					<input hidden="true" type="text" id="firstname" name="firstname" class="form-control" >
				</div>
				<div class="form-group">
					<label hidden="true" for="lastname">Last name:</label> 
					<input hidden="true" type="text" id="lastname" name="lastname" class="form-control" >
				</div>
				<div class="form-group">
					<label hidden="true" for="dateofbirth">Date of birth:</label> 
					<input hidden="true" type="date" id="dateofbirth" name="dateofbirth" class="form-control" >
				</div>
				<div class="form-group">
					<label hidden="true" for="email">E-mail:</label> 
					<input hidden="true" type="email" id="email" name="email" class="form-control" >
				</div>
			</div>
			<div class="form-actions modal-footer">
				<button class="submitBtn" id="submitBtn"  type="submit" >Save new password</button>
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

		$(document).ready(function(){
			var url = window.location.href;
			var id = url.substring(url.lastIndexOf('/') + 1);
			console.log(id);
				$.ajax({
					type:'GET',
					url:"users/" + id,
					success: function(us){
						$('#id').val(us.id);
						$('#username').val(us.username);
						$('#password').val(us.password);
						$('#firstname').val(us.firstname);
						$('#lastname').val(us.lastname);
						$('#dateofbirth').val(us.dateofbirth);
						$('#email').val(us.email);
						}
					});
		 });


		
	</script>


</body>
</html>