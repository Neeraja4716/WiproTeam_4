<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style>
  .p3 {
  font-family: "Lucida Console", "Courier New", monospace;
}
  </style>
  
</head>
    <!--Header-->
    <br>
    
            
          


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Online Shopping</a>
    </div>
    <ul class="nav navbar-nav">
     <li class="nav-item">
        <a class="nav-link" href="home.jsp"><b>Home</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="myCart.jsp"><b>My Cart</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="myOrders.jsp"><b>My Orders</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="changeDetails.jsp"><b>Change Details</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="messageUs.jsp"><b>Message Us</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.jsp"><b>About</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.jsp"><b>Logout</b></a>
      </li>
           
      <form class="navbar-form navbar-left" action="searchHome.jsp">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    
    <li class="nav-item">
        <div class="topnav sticky" style="color:red">
    <%String email=session.getAttribute("email").toString(); %>
          
            <h2><a href=""><%out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>
                        
            </div>
      </li>
    
    </ul>
  </div>
</nav>
           <br>
           <!--table-->