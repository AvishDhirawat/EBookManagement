<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="all_component/allCSS.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/book.png");
	height: 60vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #d6d4ce;
}
</style>
</head>
<body style="background-color: #f7f7f7;">

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img"></div>


	<!-- start recent book -->

	<div class="container">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">


			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao2.getRecentBooks();

			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%> "
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>

						<%
						if (b.getBookCategory().equals("Old")) {
						%>
						<p>
							Category:<%=b.getBookCategory()%></p>
						<div class="row">

							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><i
								class="fas fa-rupee-sign"></i><%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>
						<p>
							Category:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fas fa-cart-plus"></i> Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fas fa-rupee-sign"></i><%=b.getPrice()%></a>
						</div>
						<%
						}
						%>


					</div>
				</div>
			</div>

			<%
			}
			%>








		</div>

		<div class="text-center mt-1">
			<a href="all_recent_book.jsp"
				class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	<!-- End of recent book -->

	<hr>
	<!-- start New book -->

	<div class="container">
		<h3 class="text-center">New Book</h3>
		<div class="row">


			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao.getNewBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>  "
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Category:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fas fa-cart-plus"></i> Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fas fa-rupee-sign"></i><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>





		</div>

		<div class="text-center mt-1">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View
				All</a>
		</div>
	</div>
	<!-- End of New book -->
	<hr>

	<!-- start Old book -->

	<div class="container">
		<h3 class="text-center">Old Book</h3>
		<div class="row">

			<%
			BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list3 = dao3.getOldBooks();

			for (BookDtls b : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%> "
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>

						<p>
							Category:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><i
								class="fas fa-rupee-sign"></i><%=b.getPrice()%></a>
						</div>

					</div>
				</div>
			</div>

			<%
			}
			%>
		</div>


	</div>

	<div class="text-center mt-1">
		<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View
			All</a>
	</div>
	</div>
	<!-- End of Old book -->
	<%@include file="all_component/footer.jsp"%>
</body>
</html>