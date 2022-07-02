<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body style="background-image: url('https://img.freepik.com/free-photo/isolated-shipping-paper-boxes-inside-blue-shopping-cart-trolley-tablet-isolated-blue_50039-2474.jpg?w=1380');">
<head>
<div style="color: red; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

<div id="container">
    <img src="'https://img.freepik.com/free-photo/isolated-shipping-paper-boxes-inside-blue-shopping-cart-trolley-tablet-isolated-blue_50039-2474.jpg?w=1380" id="img1" />
    <img src="img2.jpg" id="img2" />
</div>

#container {
    position:relative;
}

#img2 {
    position: absolute;
    left: 50px;
    top: 50px;
}


body {
  background-color: black;
  font-family: cursive;
}

.glow {
  font-size: 80px;
  color: #fff;
  text-align: center;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }
  
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}


table,th,td{
border:1px solid black;
border-collapse: collapse;
text-align: center;
background-color: #ADD8E6;
}
h3
{
	color: blue;
	text-align: center;
}
</style>
</head>
<body>
<h1 class="glow"></h1>
 
<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
<h3 class="alert">Product added successfully!</h3>
<%} %>
<%
if("exist".equals(msg))
{
%>
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<div style="color: black; text-align: center; font-size: 20px;">
<table class="table table-striped table-dark"style="width:100%">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i>
          </tr>
        </thead>
        <tbody>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where active='Yes'");
	while(rs.next())
	{
%>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4) %> </td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
<%
	}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
        </tbody>
      </table>
      </div>
      <br>
      <br>
      <br>

</body>
</body>
</html>