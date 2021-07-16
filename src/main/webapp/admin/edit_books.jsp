<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Edit Books</title>

<%@include file="allCSS.jsp"%>
</head>
<body style="background-color: #f0f2f2">
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Books</h4>

					


						<%
						int id = Integer.parseInt(request.getParameter("id"));

						BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
						BookDtls b = dao.getBookById(id);
						%>


						<form action="../editbooks" method="post">
						<input type="hidden" name="id" value="<%=b.getBookId() %>" >
							<div class="form-group">
								<lable for="exampleInputEmail1">Book Name*</lable>
								<input name="bname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getBookName()%>" >
							</div>
							<div class="form-group">
								<lable for="exampleInputEmail1">Author Name*</lable>
								<input name="author" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getAuthor()%>">
							</div>
							<div class="form-group">
								<lable for="exampleInputPassword1">Price*</lable>
								<input name="price" type="number" class="form-control"
									id="exampleInputPassword1" aria-describedby="emailHelp" value="<%=b.getPrice()%>">
							</div>
						
							<div class="form-group">
								<lable for="inputState">Book Status</lable>
								<select id="inputState" name="status" class="form-control">
									<%
									if("Active".equals(b.getStatus())){%>
									<option value="Active">Active</option>
									
									<option value="Inactive">Inactive</option>
								
									<%
									} else {
									%>
									
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								   <%
									}
									%>
									</select>
							</div>
							

							<button type="submit" class="btn btn-primary">Update</button>

						</form>


					</div>
				</div>

			</div>

		</div>

	</div>

	<div style="margin-top: 40px">
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
