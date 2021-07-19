<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 10px; background-color: #01579b"></div>

<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fas fa-book"></i>Ebooks
			</h3>
		</div>

		

		<div class="col-md-3">
		   <c:if test="${not empty userobj }">
		   <a href="../login.jsp" class="btn btn-success"><i
				class="fas fa-user"></i>&nbsp  ${userobj.name}</a> 
				
		     <a data-toggle="modal" data-target="#myModal"
				class="btn btn-primary text-white"> 
				<i class="fas fa-sign-in-alt"></i>&nbsp Logout
			</a>
		   
		   </c:if>
		
		
		   <c:if test="${empty userobj }">
			<a href="../login.jsp" class="btn btn-success"><i
				class="fas fa-sign-in-alt"></i>&nbsp Login</a> 
				
				<a href="../register.jsp"
				class="btn btn-primary text-white"> 
				<i class="fas fa-user-plus"></i>&nbsp
				Register
			</a>
			
			</c:if>
			
		</div>

	</div>
</div>
<!-- logout modal -->


  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
           <div class="text-center">
              <h4>Do You want to logout</h4>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
          <a href="../logout" type="button" class="btn btn-primary text-white" >Logout</a>
       
           
           </div>
         
          </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        </div>
        
      </div>
    </div>
  </div>

<!-- end logout modal -->

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="../index.jsp"><i class="fas fa-home"></i> </a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			</form>
	</div>
</nav>