<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix= "c" %>
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
				<button type="button" class="btnAdd" id="addBtn">Add genre</button>
				<table class="table">
					<thead>
						<tr>
							<th class="col-lg-5 col-sm-4">Name</th>
							<th class="col-lg-4 col-sm-3">Subgenre</th>
							<th class="col-lg-1 col-sm-2">Edit</th>
							<th class="col-lg-1 col-sm-2">Delete</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="gen" items="${genres}">
						<tr>
							<td class="col-lg-5 col-sm-4"> ${gen.name}</td>
							<td class="col-lg-4 col-sm-3"> ${gen.subgenre_name}</td>
							<td class="col-lg-1 col-sm-2"><a href="/edit-genre?id=${gen.id}" ><button class="btnE" id="editBtn"><img src="../resource/edit.png" width="20" height="20"/></button></a></td>
							<td class="col-lg-1 col-sm-2"><a href="/delete-genre?id=${gen.id}" ><button class="btnD"><img src="../resource/del.png" width="20" height="20"/></button></a></td>
						</tr>
					</c:forEach>
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
					<form id="contactForm" method="POST" action="save-genre" role="form">
						<div class="modal-body">
							<div class="form-group" hidden="true">
								<label for="id" hidden="true">Id</label> 
								<input type="text" name="id" value="${gen.id}" hidden="true" class="form-control">
							</div>
							<div class="form-group">
								<label for="name">Name</label> 
								<input type="text" name="name" value="${gen.name}" class="form-control">
							</div>
							<div class="form-group">
								<label for="subgenre_name">Subgenre</label> 
								<input type="text" name="subgenre_name" value="${gen.subgenre_name}" class="form-control">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Save changes</button>
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
							<button type="submit" class="btn btn-primary">Delete</button>
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