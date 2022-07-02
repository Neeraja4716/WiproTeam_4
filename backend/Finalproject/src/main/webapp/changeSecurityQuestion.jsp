<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<html>
<div style="background-color: brown; padding:5px; font-size: 15px;">
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">
<center><h2>Change Security Question<i class="fa fa-edit"></i></h2></center>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert"; color="green">Your Password is wrong!</h3>
<%} %>
<div style="color: black; text-align: center; font-size: 20px;">
<form action="changeSecurityQuestionAction.jsp" method="post">
<h4>Select Your New Securtiy Question</h4>
  <select class="input-style" name="securityQuestion">
  <option value="What is your nick name?">What is your nick name?</option>
    <option value="What is your favorite place?">What is your favorite place?</option>
    <option value="Who is your favorite sports person?">Who is your favorite sports person?</option>
    <option value="What is your bestfriend name?">What is your best friend name?</option>
  </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter new Answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter password (For security)" required>
<hr>
 <button class="button" type="submit"> Save <i class='far fa-arrow-alt-circle-right'></i></button>
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