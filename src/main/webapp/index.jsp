<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pick-a-Book: Index</title>
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

.crd-ho:hover {
	background-color: #d6d4ce;
}


/* toast */
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

/* toast */
</style>
</head>
<body style="background-color: #f7f7f7;">                     
<%
User u=(User)session.getAttribute("userobj");
%>
<c:if test="${not empty addCart }">
<div id="toast"> ${addCart} </div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
<c:remove var="addCart" scope="session"/>
</c:if>

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
						<img src="book/<%=b.getPhotoName()%> "
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>

						<%
						if (b.getBookCategory().equals("Old")) {
						%>
						<p>
							Category:<%=b.getBookCategory()%></p>
						<div class="row">

							<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><i
								class="fas fa-rupee-sign"></i><%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>
						<p>
							Category:<%=b.getBookCategory()%></p>
						<div class="row">
						
							<%
							if(u==null){
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-1"><i
								class="fas fa-cart-plus"></i> Add Cart</a>
							<%
							}
							%>
							
							
								<a href="view_books.jsp?bid=<%=b.getBookId() %>"
								 class="btn btn-success btn-sm ml-1">View Details</a> 
								<a href="" class="btn btn-danger btn-sm ml-1"><i
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
						<img src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Category:<%=b.getBookCategory()%></p>
						<div class="row">
						
							<%
							if(u==null){
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-1"><i
								class="fas fa-cart-plus"></i> Add Cart</a>
							<%
							}
							%>
							
								
							 <a href="view_books.jsp?bid=<%=b.getBookId() %>"
								class="btn btn-success btn-sm ml-1">View Details</a> 
								
							<a href="" class="btn btn-danger btn-sm ml-1"><i
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
						<img alt="book/<%=b.getPhotoName()%>" src="book/<%=b.getPhotoName()%> "
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>

						<p>
							Category:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">View Details</a> <a
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
<!-- 	</div> -->
	<!-- End of Old book -->
	<%@include file="all_component/footer.jsp"%>
</body>
</html>