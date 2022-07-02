<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp"%>
<html>
<body style="background-image:url('https://th.bing.com/th/id/R.94dd142574913c63667b798a1f62f2ed?rik=LghDTUSBVzWMAA&riu=http%3a%2f%2fbandfbusinessplans.co.uk%2fuploads%2ffilemanager%2fonline-shopping3.jpg&ehk=FlHoQ5ypVGdkXvWXuHZfy6h9ZLqiTtXyr%2fTBISgpcM0%3d&risl=&pid=ImgRaw&r=0');">
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Message Us</title>
</head>
<body>
<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">
<div style="color: Black; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:green;">Message successfully sent. Our team will contact you soon!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; color:red;">Some thing Went Wrong! Try Again!</h3>
<%} %>
<form action="messageUsAction.jsp" method="post">

<div class="form-group">
              <label class="control-lable" for="email">Subject</label>
             <input class="form-control" name="subject" type="text" placeholder="Subject" required>
             </div>
             <hr>
             <div class="form-group">
              <label class="control-lable" for="email">Description</label>
             <textarea class="form-control" name="body"  placeholder="Enter Your Message" required></textarea>
             </div>


<hr>
<button class="button" type="submit"> Send <i class="far fa-arrow-alt-circle-right"></i></button>
</form>
</div>
</div>
</div>
</div>

<br><br><br>
</body>
</body>
</html>