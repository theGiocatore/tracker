<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix= "c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tracks</title>
</head>
<body>

<!-- 		TABLE SECTION -->

	<jsp:include page="../navigation/navbar.jsp" />

	<div class="tabMain container-fluid">
		<div>
			<h1>Tracks</h1>
		</div>
		<button type="button" class="btnAdd addBtn" >Add track</button>
		<table class="table">
			<thead>
				<tr>
					<th hidden="true" class="col-lg-1 col-sm-1">ID</th>
					<th class="col-lg-4 col-sm-3">Name</th>
					<th class="col-lg-3 col-sm-2">Duration</th>
					<th class="col-lg-2 col-sm-2">Format</th>
					<th class="col-lg-1 col-sm-2">Edit</th>
					<th class="col-lg-1 col-sm-2">Delete</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="track" items="${tracks}">
				<tr>
					<td hidden="true" class="col-lg-1 col-sm-1"> ${track.id} </td>
					<td class="col-lg-4 col-sm-3"> ${track.track_name} </td>
					<td class="col-lg-3 col-sm-2"> ${track.file_format} </td>
					<td class="col-lg-2 col-sm-2"> ${track.duration} </td>
					<td class="col-lg-1 col-sm-2"><a href="/edit-track?id=${track.id}" ><button class="btnE editBtn" value="${track.id}"><img src="../resource/edit.png" width="20" height="20"/></button></a></td>
					<td class="col-lg-1 col-sm-2"><a href="/delete-track?id=${track.id}" ><button type="button" class="btnD"  ><img src="../resource/del.png" width="20" height="20"/></button></a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
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
					<form id="contactForm" method="POST" action="save-track">
						<div class="modal-body">
							<div class="form-group" >
								<label for="id"  hidden="true">Id</label>
								<input hidden="true"  name="id" value="${track.id}" class="form-control">
							</div>
							<div class="form-group">
								<label for="name">Name</label> 
								<input type="text" name="track_name" value="${track.track_name}" class="form-control">
							</div>
							<div class="form-group">
								<label for="format">Format</label> 
								<input type="text" name="file_format" value="${track.file_format}" class="form-control">
							</div>
							<div class="form-group">
								<label for="duration">Duration</label> 
								<input type="text" name="duration" value="${track.duration}" class="form-control">
							</div>
							
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
								<input type="submit" class="btn btn-primary" value= "Save changes"/>
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
							<h3>Name of track</h3>
							<h3>Duration</h3>
							<h3>Format</h3>
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
		
	
	<script>

	 $('.btnAdd , .editBtn').on('click', function(e){
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