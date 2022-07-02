<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
        <a class="nav-link" href="addNewProduct.jsp"><b>Add New Product  </b><i class='fas fa-plus-square'></i></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="allProductEditProduct.jsp"><b>All Products and Edit Products <i class='fab fa-elementor'></i></b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="messageReceived.jsp"><b>Messages Received <i class='fas fa-comment-alt'></i></b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ordersReceived.jsp"><b>Orders Received <i class="fas fa-archive"></i></b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="cancelOrder.jsp"><b>Cancel Orders <i class='fas fa-window-close'></i></b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="deliveredOrders.jsp"><b>Delivered Orders <i class='fas fa-dolly'></i></b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.jsp"><b>Logout</b> <i class='fas fa-share-square'></i></a>
      </li>
    </ul>
  </div>
</nav>
    
    <div class="topnav sticky">
    <%String email=session.getAttribute("email").toString(); %>
          </div>
           <br>
           <!--table-->
