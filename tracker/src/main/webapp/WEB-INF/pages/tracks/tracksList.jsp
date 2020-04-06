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
		<button type="button" class="btnAdd addBtn">Add track</button>
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
						<td hidden="true" class="col-lg-1 col-sm-1">${track.id}</td>
						<td class="col-lg-4 col-sm-3">${track.track_name}</td>
						<td class="col-lg-3 col-sm-2">${track.file_format}</td>
						<td class="col-lg-2 col-sm-2">${track.duration}</td>
						<td class="col-lg-1 col-sm-2">
							<button class="btnE editBtn" value="${track.id}">
								<img src="../resource/edit.png" width="20" height="20" />
							</button>					
						</td>
						<td class="col-lg-1 col-sm-2">
							<button type="submit" class="btnD" value="${track.id}">
								<img src="../resource/del.png" width="20" height="20" />
							</button> <input type="hidden" id="id" value="${track.id}">
						</td>
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
						<div class="form-group">
							<label for="id" hidden="true">Id</label> 
							<input hidden="true" type="number" id="id" name="id" class="form-control">
						</div>
						<div class="form-group">
							<label for="name">Name</label> 
							<input type="text" id="track_name" name="track_name" class="form-control">
						</div>
						<div class="form-group">
							<label for="format">Format</label> 
							<input type="text" id="file_format" name="file_format" class="form-control">
						</div>
						<div class="form-group">
							<label for="duration">Duration</label> 
							<input type="text" id="duration" name="duration" class="form-control">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="submit" id="id" name= "id" class="btn btn-primary">Save changes</button>
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
				<form id="contactForm" method="POST" action="delete-track"
					name="contact" role="form">
					<div class="modal-body">
						<p>Are you sure you want to delete the following genre?</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="submit" name="id" id="id" class="btn btn-primary">Delete</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 		END OF DELETE MODAL -->


	<script>
	
	 $('.btnAdd, .btnE ').on('click', function(e){
		  $('#addOrEditModal').modal('show');
			$('#addOrEditModal').on('hidden.bs.modal', function () {
			    $('#addOrEditModal form')[0].reset();
			    });		
		});
		  
	
	 $('.btnD').on('click', function(e){
		  $('#deleteModal').modal('show');
		
		});
	$(document).ready(function(){
		$('table .btnD').on('click', function(){
			var id = $(this).parent().find('.btnD').val();
			$('#deleteModal #id').val(id);
		})
		$('table .btnE').on('click', function(){
			var id = $(this).parent().find('.btnE').val();
			$.ajax({
				type:'GET',
				url:"tracksList/" + id,
				success: function(track){
					$('#addOrEditModal #id').val(track.id);
					$('#addOrEditModal #track_name').val(track.track_name);
					$('#addOrEditModal #file_format').val(track.file_format);
					$('#addOrEditModal #duration').val(track.duration);
					}
				});
				
		})
	 });

	 
	</script>

</body>
</html>