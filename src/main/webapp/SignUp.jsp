<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner-background{
clip-path: polygon(50% 0%, 100% 0, 100% 100%, 69% 93%, 36% 100%, 0 93%, 0 0);
}
</style>

<script src="js/myjs.js" type="text/javascript"></script>

</head>
<body>
<%@include file="navbar.jsp"%>

<main class="primary-background banner-background" style="padding-bottom:200px;">
<div class="container">
<div class="row">
<div class="col-md-5 offset-md-3" style="height:80vh">
<div class="card">
<div class="card-header secondary-background text-white text-center">
<h4><span class="fa fa-user-circle-o "></span> Register Here</h4>
</div>
<div class="card-body">
<form id="reg-form" action="RegisterServlet" method="POST">
  <div class="form-group">
    <label for="exampleUserName">UserName</label>
    <input name="user_name" type="name" class="form-control" id="exampleInputUserName" aria-describedby="emailHelp" placeholder="Enter name">
 
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
 <div class="form-group">
 <label for="gender">Select Gender</label>
 <br>
 <input type="radio" id="Male-gender" name="gender" value="male">Male
 <input type="radio" id="Female-gender" name="gender" value="female">Female
 </div>
 <div class="form-group">
 <textarea name=about class="form-control" rows="5" cols="5" placeholder="Write about yourself"></textarea>
 </div>
  <div class="form-check">
    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
  </div>
  <br>
  <div class="container text-center" id="loading" style="display:none;">
  <span class="fa fa-refresh fa-spin fa-4x"></span>
  <h2>Please Wait...</h2>
  </div>

  <button id="submit-btn" type="submit" class="btn text-white" style="background-color:#F64C72!important">Register</button>

</form>
</div>
</div>
</div>
</div>
</div>
</main>

<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
$(document).ready(function(){
	console.log("Loaded....")
	
	$('#reg-form').on('submit',function(event){
		event.preventDefault();
		
		let form=new FormData(this);
		$("#submit-btn").hide();
		$("#loading").show();
		
		$.ajax({
			url:"RegisterServlet",
			type:'POST',
			data:form,
			success:function(data,textStatus,jqXHR){
				console.log(data);
				$("#submit-btn").show();
				$("#loading").hide();
				
				if(data.trim()=='done'){
				swal("Successfully Registered...redirecting to LogIn page")
				.then((value) => {
				window.location="logIn.jsp";
				});
				}
				else{
					swal(data);
				}
				
			},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(jqXHR);
				$("#submit-btn").show();
				$("#loading").hide();

				swal("Something went wrong...try again!");
				
			},
			processData:false,
			contentType:false
		})
	})
})


</script>


</body>
</html>