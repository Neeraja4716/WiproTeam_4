<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from users where email='"+email+"'");
	while(rs.next())
	{
%>
<h3><center>Name: <%=rs.getString(1) %></center></h3>
<hr>
 <h3><center>Email: <%=rs.getString(2) %></center></h3>
 <hr>
 <h3><center>Mobile Number: <%=rs.getString(3) %></center></h3>
 <hr>
<h3><center>Security Question: <%=rs.getString(4) %></center></h3>
<hr>
      <br>
      <br>
      <br>
<%
}
}catch(Exception e)
{
	System.out.println(e);
}
%>
</div>
</div>
</div>
</div>
</body>

</html>