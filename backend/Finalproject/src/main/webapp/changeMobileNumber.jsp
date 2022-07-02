<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp" %>
<html>
<div style="background-color: teal; padding:5px; font-size: 15px;">
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
</head>
<body>
<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">
<center><h2>Change Mobile Number<i class="fa fa-edit"></i></h2></center>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeMobileNumberAction.jsp" method="post">
<br>
<div class="form-group">
              <label class="control-lable" for="email">Enter Your New Mobile Number</label>
             <input class="input-style" type="number"  name="mobileNumber" placeholder="Enter New Mobile Number" required>
             </div>
 <hr>
 <div class="form-group">
              <label class="control-lable" for="email">Enter Password (For Security)</label>
             <input class="input-style" type="password" name="password" placeholder="Enter password"required>
             </div>

<hr>
<button class="button" type="submit"> Save  <i class='far fa-arrow-alt-circle-right'></i></button>
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