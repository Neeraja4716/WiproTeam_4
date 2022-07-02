<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp" %>
<html>
<div style="background-color: skyblue; padding:5px; font-size: 15px;">
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or Change Address</title>
</head>
<body>
<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">
<center><h2>Change Address<i class="fa fa-edit"></i></h2></center>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<center><h3 class="alert">Address Successfully Updated !</h3></center>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<center><h3 class="alert">Some thing Went Wrong! Try Again!</h3></center>
<%} %>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from users where email='"+email+"'");
	while(rs.next())
	{
%>
<div style="color: blue; text-align: center; font-size: 20px;">
<form action="addChangeAddressAction.jsp" method="post">
<center><h3>Enter Address</h3></center>
<center><input class="input-style" type="text" name="address" value="<%=rs.getString(7) %>" placeholder="Enter Address" required></center>
 <hr>
<center> <h3>Enter city</h3></center>
<center><input class="input-style" type="text" name="city" value="<%=rs.getString(8) %>" placeholder="Enter City" required></center> 
<hr>
<center><h3>Enter State</h3></center>
<center><input class="input-style" type="text" name="state" value="<%=rs.getString(9) %>" placeholder="Enter State" required></center>
<hr>
<center><h3>Enter country</h3></center>
<center><input class="input-style" type="text" name="country" value="<%=rs.getString(10) %>" placeholder="Enter Country" required></center>
<hr>
 <center><button class="button" type="submit"> Save <i class='far fa-arrow-alt-circle-right'></i></center></button>
 </form>
 </div>
<%}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
</div>
</div>
</div>
</div>
</body>
<br><br><br>
</div>
</html>