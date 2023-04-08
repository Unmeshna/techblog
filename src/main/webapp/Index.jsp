<%@page import="com.tech.blog.helper.connectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>

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
<div class="container-fluid m-0 p-0">
<div class="jumbotron primary-background text-white banner-background">
<div class="container">
<h3 class="display-3">Welcome to TechBlog</h3>
<p>Welcome to world of technology!A programming language is a system of notation for writing computer programs. Most programming languages are text-based formal languages, but they may also be graphical. They are a kind of computer language.</p>
<p>Programming language theory is the subfield of computer science that studies the design, implementation, analysis, characterization, and classification of programming languages.</p>
<a href="SignUp.jsp">
<button class="btn button-background"><span class="fa fa-user-plus"></span> Start! it's Free</button>
</a>
<a  href="logIn.jsp" class="btn button-background"><span class="fa fa-user-circle-o fa-spin"></span> LogIn</a> 
</div>
</div>
</div>

<div class="container">
<div class="row mb-2">
<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Python Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">C/C++ Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read more</a>
  </div>
</div>
</div>
</div>
</div>

<div class="container">
<div class="row">
<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Android Development</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Web Development</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Cloud Computing</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
</div>
</div>


<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>