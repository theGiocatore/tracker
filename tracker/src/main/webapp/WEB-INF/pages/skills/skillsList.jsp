<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix= "c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Skills</title>
</head>
<body>
	<jsp:include page="../navigation/navbar.jsp" />

	<div class="tabMain container-fluid">
		<div>
			<h1>Skills</h1>
		</div>
		<div class="row">
			<div class="col-12">
				<button class="btnAdd" id="addBtn">Add skill &nbsp;</button>
				<table class="table">
					<thead>
						<tr>							
							<th class="col-lg-9 col-sm-7">Name</th>
							<th class="col-lg-1 col-sm-2">Edit</th>
							<th class="col-lg-1 col-sm-2">Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="skill" items="${skills}">
						<tr>						
							<td class="col-lg-9 col-sm-7"> ${skill.name}</td>
							<td class="col-lg-1 col-sm-2"><a href="/edit-skill?id=${skill.id}" ><button class="btnE" id="editBtn"><img src="../resource/edit.png" width="20" height="20"/></button></a></td>
							<td class="col-lg-1 col-sm-2"><a href="/delete-skill?id=${skill.id}" ><button class="btnD"><img src="../resource/del.png" width="20" height="20"/></button></a></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

		<!-- 		END OF TABLE SECTION -->

		<!-- 		ADD OR EDIT MODAL -->

		<div class="modal fade" tabindex="-1" role="dialog" id="addOrEditModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Skill</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form id="contactForm" method="POST" action="save-skill" role="form">
						<div class="modal-body">
							<div class="form-group" hidden="true">
								<label for="id" hidden="true">Id</label> 
								<input type="text" name="id" value="${skill.id}" hidden="true" class="form-control">
							</div>
							<div class="form-group">
								<label for="name">Name</label> 
								<input type="text" name="name" value="${skill.name}" class="form-control">
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
						<h5 class="modal-title">Skill delete</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form id="contactForm" name="contact" role="form">
						<div class="modal-body">
							<p>Are you sure you want to delete the following skill?</p>
							<h3>Name of skill</h3>
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


	<script>
		$('#addBtn, #editBtn').on('click', function(e) {
			$('#addOrEditModal').modal('show');
			e.preventDefault();
		});

		$('#deleteBtn').on('click', function(e) {
			$('#deleteModal').modal('show');
			e.preventDefault();
		});
	</script>
	
</body>
</html>