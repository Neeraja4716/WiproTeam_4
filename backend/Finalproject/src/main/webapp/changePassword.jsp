<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp" %>
<html>
<div style="background-color: gray; padding:5px; font-size: 15px;">
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Password</title>
</head>
<body>
<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">
<center><h2>Change Password<i class="fa fa-edit"></i></h2></center>
<%
String msg=request.getParameter("msg");
if("notMatch".equals(msg))
{
%>
<h3 class="alert"><center>New password and Confirm password does not match!!</center></h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert"><center>Your old Password is wrong!</center></h3>
<%} %>
<%
if("done".equals(msg))
{
%>
<h3 class="alert"><center>Password changed successfully!</center></h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert"><center>Some thing went wrong! Try again!</center></h3>
<%} %>
<div style="color: green; text-align: center; font-size: 20px;">
<form action="changePasswordAction.jsp" method="post">
<h3><center>Enter Old Password</center></h3>
<center><input class="input-style" type="password" name="oldPassword" placeholder="Enter Old Password" required></center>
  <hr>
 <h3><center>Enter New Password</center></h3>
 <center><input class="input-style" type="password" name="newPassword" placeholder="Enter New Password" required></center>
 <hr>
<h3><center>Enter Confirm Password</center></h3>
<center><input class="input-style" type="password" name="confirmPassword" placeholder="Enter to Confirm Password" required></center>
<hr>
 <center></center><button class="button" type="submit"> Save <i class='far fa-arrow-alt-circle-right'></i></button></center>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
<br><br><br>
</div>
</html>