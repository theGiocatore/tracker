<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Genres</title>
</head>
<body>

<!-- 		TABLE SECTION -->

	<jsp:include page="../navigation/navbar.jsp" />
	<div class="tabMain container-fluid">
		<div>
			<h1>Genres</h1>
		</div>
		<div class="row">
			<div class="col-12">
				<button class=" btnAdd" id="addBtn">Add genre</button>
				<table class="table">
					<thead>
						<tr>
							<th class="col-lg-10 col-sm-8">Name</th>
							<th class="col-lg-1 col-sm-2">Edit</th>
							<th class="col-lg-1 col-sm-2">Delete</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="col-lg-10 col-sm-8"></td>
							<td class="col-lg-1 col-sm-2"><button class="btnE" id="editBtn"><img src="../resource/edit.png" width="20" height="20"/></button></td>
							<td class="col-lg-1 col-sm-2"><button class="btnD" id="deleteBtn"><img src="../resource/del.png" width="20" height="20"/></button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

<!-- 		END OF TABLE SECTION -->
		
<!-- 		ADD OR EDIT MODAL -->
		
		<div class="modal fade" tabindex="-1" role="dialog" id="addOrEditModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Genre</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form id="contactForm" name="contact" role="form">
						<div class="modal-body">
							<div class="form-group" hidden="true">
								<label for="id">Id</label> <input type="text" name="id"
									class="form-control">
							</div>
							<div class="form-group">
								<label for="name">Name</label> <input type="text"
									name="name" class="form-control">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save changes</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		
<!-- 		END OF ADD OR EDIT MODAL -->

<!-- 		DELETE MODAL -->
		
		<div class="modal fade" tabindex="-1" role="dialog" id="deleteModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Genre delete</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form id="contactForm" name="contact" role="form">
						<div class="modal-body">
							<p>Are you sure you want to delete the following genre?</p>
							<h3>Name of genre</h3>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Delete</button>
						</div>
					</form>
				</div>
			</div>
		</div>

<!-- 		END OF DELETE MODAL -->
		
	</div>
	<script>
	$('#addBtn, #editBtn').on('click', function(e){
		  $('#addOrEditModal').modal('show');
		  e.preventDefault();
		});

	$('#deleteBtn').on('click', function(e){
		  $('#deleteModal').modal('show');
		  e.preventDefault();
		});
	</script>
</body>
</html>