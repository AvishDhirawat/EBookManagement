<div class="container-fluid"
style="height:10px; background-color: #01579b">

</div>

<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3>
			<i class="fas fa-book"></i>Ebooks
			</h3>
		</div>

		<div class="col-md-6">
 			<form class="form-inline my-2 my-lg-0">
      			<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      			<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
    		</form>
		</div>
		
		<div class="col-md-3">
		<a href="login.jsp" class="btn btn-success"><i class="fas fa-sign-in-alt"></i>&nbsp Login</a> 
		<a href="register.jsp" class="btn btn-primary text-white">  <i class="fas fa-user-plus"></i>&nbsp Register</a>
		</div>

	</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="index.jsp"><i class="fas fa-home"></i> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" 
  	data-target="#navbarSupportedContent" 
  	aria-controls="navbarSupportedContent" aria-expanded="false" 
  	aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active"> <a class="nav-link" href="index.jsp">Home 
      <span class="sr-only">(current)</span>
      </a></li>
      <li class="nav-item active" ><a class="nav-link " href="#"><i class="fas fa-book-open"></i> Recent 
      		Book</a> </li>
      <li class="nav-item active"><a class="nav-link" href="#"><i class="fas fa-book-open"></i> New 
        	Book</a></li>
     <li class="nav-item active"><a class="nav-link disabled" href="#"><i class="fas fa-book-open"></i> Old
        	Book</a></li>
    </ul>
    <form class="form-inline my-2 my-lg-0 ">
    <a href="setting.jsp" class="btn btn-light my-2 my-sm-0 " type="submit"><i class="fas fa-cog"></i> Setting</a>
        <button class="btn btn-light my-2 my-sm-0 ml-1" type="submit"><i class="fas fa-phone-square-alt"></i> Contact Us</button>
    </form>
  </div>
</nav>