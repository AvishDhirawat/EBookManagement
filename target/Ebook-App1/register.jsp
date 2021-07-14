<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Register</title>
<%@include file="all_component/allCSS.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center">Registration Page</h4>
						<form>

							<div class="form-group">
								<label for="name">Enter Full Name</label> <input
									type="text" class="form-control" id="name"
									aria-describedby="nameHelp" required="required">

							</div>
							<div class="form-group">
								<label for="email">Email address</label> <input
									type="email" class="form-control" id="email"
									aria-describedby="emailHelp" required="required">

							</div>
					
					<div class="form-group">
						<label for="phoneNo">Phone No</label> <input
							type="number" class="form-control" id="phoneNo"
							aria-describedby="phoneNoHelp" required="required">

					</div>
					<div class="form-group">
						<label for="password">Password</label> <input
							type="password" class="form-control" id="password">
					</div>
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="Check1">
						<label class="form-check-label" for="exampleCheck1">Check me out</label>
						
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>