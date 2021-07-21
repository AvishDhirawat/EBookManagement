<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Login</title>
<%@include file="all_component/allCSS.jsp"%>
</head>

<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row mt-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Login</h3>


						<c:if test="${not empty failedmsg }">
							<h5 class="text-center text-danger">${failedmsg}</h5>
							<c:remove var="failedmsg" scope="session" />
						</c:if>

						<c:if test="${not empty succmsg }">
							<h5 class="text-center text-success">${succmsg}</h5>
							<c:remove var="succmsg" scope="session" />
						</c:if>


						<form action="login" method="post">
							<div class="form-group">
								<label for="Email">Email address</label> <input type="email"
									class="form-control" id="Email" aria-describedby="emailHelp"
									required="required" name="email">

							</div>
							<div class="form-group">
								<label for="Password">Password</label> <input type="password"
									class="form-control" id="Password" required="required"
									name="password">
							</div>

							<div class="text-center">
							<!-- 	<a href="admin/home.jsp">Admin</a>  -->
								<button type="submit" class="btn btn-primary">Login</button>
								<br> <a href="register.jsp">Create Account</a>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>