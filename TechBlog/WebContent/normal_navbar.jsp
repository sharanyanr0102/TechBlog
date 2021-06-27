<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark primary-background">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="index.jsp"> <span class="fa fa-asterisk"></span>TechBlog</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#"><span class="fa fa-bell-o"></span>Learn Code with Durgesh</a>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            <span class="fa fa-check-square-o"></span>Courses
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	            <li><a class="dropdown-item" href="#">Java</a></li>
	            <li><a class="dropdown-item" href="#">Python</a></li>
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="#">Projects</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item">
	          <a class="nav-link" href="#"> <span class="fa fa-address-book-o"></span> Contact Us</a>
	        </li>
	        
	        <li class="nav-item">
	          <a class="nav-link" href="login_page.jsp" tabindex="-1" aria-disabled="true"><span class="fa fa-user-circle"></span>Login</a>
	        </li>
	        
	        <li class="nav-item">
	          <a class="nav-link" href="register_page.jsp" tabindex="-1" aria-disabled="true"><span class="fa fa-user-plus"></span>Sign Up</a>
	        </li>
	      </ul>
	      <form class="d-flex">
	        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	        <button class="btn btn-outline-light" type="submit">Search</button>
	      </form>
	    </div>
	  </div>
	</nav>
</body>
</html>