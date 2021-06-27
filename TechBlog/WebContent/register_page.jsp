<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<style>
            .banner-background
            {
             clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
        </style>
        
</head>
<body>
	<%@ include file="normal_navbar.jsp" %>
	<main class="primary-background p-5 banner-background" style="padding-bottom: 30px;">
		<div class="container">
		
			<div class="col-md-6 offset-md-3">
					<div class="card">
						<div class="card-header text-center primary-background text-white">
							<span class="fa fa-user-circle fa-3x"></span><br>
							Register here
						</div>
						
						<div class="card-body">
							<form id="reg-form" action="./register" method="post">
								  <div class="mb-3">
								    <label for="name" class="form-label">User Name</label>
								    <input type="text" class="form-control" id="name" name="name">
								  </div>
								  
								  <div class="mb-3">
								    <label for="gender" class="form-label">Gender</label><br>
								    <input type="radio" name="gender" value="Male"> &nbsp Male<br>
								    <input type="radio" name="gender" value="Female"> &nbsp Female
								  </div>
								  
								  <div class="mb-3">
								    <label for="email" class="form-label">Email address</label>
								    <input type="email" class="form-control" id="email" name="email">
								  </div>
								  
		
								  <div class="mb-3">
								    <label for="password" class="form-label">Password</label>
								    <input type="password" class="form-control" id="password" name="password">
								  </div>
								  
								  <div class="mb-3">
								    <label for="about" class="form-label">About</label>
								    <textarea class="form-control" rows="3" id="about" name="about">Write something about you</textarea>
								  </div>
								  
								  <div class="mb-3 form-check">
								    <input type="checkbox" class="form-check-input" id="check1" name="check">
								    <label class="form-check-label" for="check1">Agree terms and conditions</label><br>
								  </div>
								  
								  <div class="container text-center" id="loader" style="display:none;">
									  <span class="fa fa-refresh fa-spin fa-3x"></span>
									  <h4>Please Wait!!</h4>
								  </div>
								  <button id="submit-btn" type="submit" class="btn btn-primary">
								  	Sign Up
								  </button>
							</form>
						</div>
						
						<div class="card-footer">
							
						</div>
					</div>
			</div>
		</div>
	</main>
	
	<!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous">
        </script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script>
			$(document).ready(function()
			{
				console.log("Loaded.....")

				$('#reg-form').on('submit',function(event){
						event.prevetDefault();
						
						let form=new FormData(this);
						$("#submit-btn").hide();
						$("#loader").show();
						// send to RegisterServlet

						$.ajax({
							url : "./register",
							type : 'POST',
							data : form,
							success : function(data, textStatus, jqXHR){
								console.log(data)
								$("#submit-btn").show();
								$("#loader").hide();

								swal({
									  title: "Good job!",
									  text: "You clicked the button!",
									  icon: "success",
									  button: "Aww yiss!",
									});
								
								},
							error : function(jqXHR, textStatus, errorThrown){
								console.log(jqXHR)
								$("#submit-btn").show();
								$("#loader").hide();
								},

							processData : false, 
							contentType : false
							})
					});
			});
        </script>
</body>
</html>