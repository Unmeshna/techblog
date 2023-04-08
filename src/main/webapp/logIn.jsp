<%@page import="com.tech.blog.entities.Message"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner-background{
clip-path: polygon(50% 0%, 100% 0, 100% 100%, 69% 93%, 36% 100%, 0 93%, 0 0);
}
</style>
</head>
<body>

<%@include file="navbar.jsp" %>

<main class="d-flex align-items-center primary-background banner-background" style="height:80vh">
<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-header text-white secondary-background text-center">
<h4><span class="fa fa-user-circle fa-2x"></span> LogIn Here</h4>
</div>
<%
Message m=(Message)session.getAttribute("msg");
if(m!=null){
	
%>
<div class="alert <%= m.getCssClass() %>" role="alert">
<%= m.getContent() %>
</div>
<%
session.removeAttribute("msg");
}
%>
<div class="card-body">
<form action="LogInServlet" method="POST">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" required class="form-control" id="exampleInputPassword1" placeholder="Password">
 <div class="container text-center mt-3">
  <button type="submit" class="btn text-white" style="background-color:#F64C72!important">LogIn</button>
</div>
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
</body>
</html>