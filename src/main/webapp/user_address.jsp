<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address</title>
<%@include file="all_component/allCSS.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row p-3">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Edit Profile</h3>
						<from action="">

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputPassword4">Address</label> <input type="text"
									class="form-control" id="inputPassword4">
							</div>

							<div class="form-group col-md-6">
								<label for="inputPassword4">Landmark</label> <input type="text"
									class="form-control" id="inputPassword4">
							</div>

						</div>

						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="inputPassword4">City</label> <input type="text"
									class="form-control" id="inputPassword4">
							</div>

							<div class="form-group col-md-4">
								<label for="inputPassword4">State</label> <input type="text"
									class="form-control" id="inputPassword4">
							</div>

							<div class="form-group col-md-4">
								<label for="inputPassword4">Pincode</label> <input type="number"
									class="form-control" id="inputPassword4">
							</div>

						</div>

						<div class="text-center">

							<button class="btn btn-warning text-white">Add Address</button>

						</div>

						</from>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>