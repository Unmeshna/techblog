<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.tech.blog.entities.User" %>
    <%User user=(User)session.getAttribute("currentUser");
    if(user==null){
    	response.sendRedirect("logIn.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark primary-background ">
  <a class="navbar-brand" href="#"><span class="fa fa-asterisk"></span>TechBlog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active ">
        <a class="nav-link" href="Index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact Us</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Topics
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Artificial Intelligence</a>
          <a class="dropdown-item" href="#">Data Science</a>
           <a class="dropdown-item" href="#">Cloud Computing</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Other...</a>
        </div>
      </li>
    
    </ul>
   <ul class="navbar-nav mr-right">
   <li class="nav-item">
        <a class="nav-link" data-toggle="modal" data-target="#exampleModal" ><span class="fa fa-user-circle"></span> <%= user.getName() %></a>
      </li>
   <li class="nav-item">
        <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-plus"></span> Logout</a>
      </li>
   </ul>
  </div>
</nav>

<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button>-->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background ">
        <h5 class="modal-title text-white" id="exampleModalLabel">TechBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="container text-center">
    <img src="pic/<%= user.getProfile() %>" class="img-fluid" style="border-radius:50%; max-width:200px;">
          <br>
          <h5 class="modal-title" id="exampleModalLabel"><%= user.getName() %></h5>
          
          
 <div id="profile-details">         
 <table class="table">
  <tbody>
    <tr>
      <th scope="row">ID: </th>
      <td><%= user.getId()%></td>
  
    </tr>
    <tr>
      <th scope="row">Email: </th>
      <td><%= user.getEmail() %></td>
    
   
    </tr>
    <tr>
      <th scope="row">Gender: </th>
      <td><%= user.getGender() %></td>
    </tr>
    
    <tr>
      <th scope="row">Status: </th>
      <td><%= user.getAbout() %></td>
    </tr>
    
     <tr>
      <th scope="row">Registered on: </th>
      <td><%= user.getDateTime().toString() %></td>
    </tr>
  </tbody>
</table>
</div>
<div id="profile-edit" style="display:none;">
<form action="EditServlet" method="post" enctype="multipart/form-data">
<table class="table">
<tr>
<td>Id:</td>
<td><%= user.getId() %>
</tr>
<tr>
<td>Email:</td>
<td><input type="email" class="form-control" name="user_email" value="<%= user.getEmail() %>"></td>
</tr>

<tr>
<td>Name:</td>
<td><input type="text" class="form-control" name="user_name" value="<%= user.getName()%>"></td>
</tr>

<tr>
<td>Password:</td>
<td><input type="password" class="form-control" name="user_password" value="<%= user.getPassword() %>"></td>
</tr>

<tr>
<td>Gender:</td>
<td><%= user.getGender().toUpperCase() %> </td>
</tr>

<tr>
<td>About:</td>
<td>
<textarea rows="3" class="form-control" name="user_about"><%= user.getAbout() %>
</textarea>
</td>
</tr>

<tr>
<td>New Profile: </td>
<td><input type="file" class="form-control" name="user_profile"></td>
</tr>
</table>

<div class="container">
<button type="submit" class="btn btn-outline-primary">Save</button>
</div>
</form>
</div>
     </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn secondary-background text-white" data-dismiss="modal">Close</button>
        <button type="button" id="edit-button" class="btn primary-background text-white">Edit</button>
      </div>
    </div>
  </div>
</div>



<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script>
$(document).ready(function(){
	let editStatus=false;
	$('#edit-button').click(function(){
		if(editStatus==false){
			
			$('#profile-details').hide()
			$('#profile-edit').show();
			editStatus=true;
			$(this).text('Back')
		}
		else{
			$('#profile-details').show()
			$('#profile-edit').hide();
			editStatus=false;
			$(this).text('Edit')
	    }
		
		
	})
	
});

</script>

</body>
</html>