<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp"%>
<%@include file="footer.jsp" %>
<html>
<body style="background-image:url('https://www.allbusiness.com/asset/2020/09/Online-shopping-concept.jpg');">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<div style="color: violet; text-align: center; font-size: 15px;">
<body>

<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Product Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<%
int id=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from product");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
}
catch(Exception e)
{}
%>
</div>
<h2 style="color: black; text-align: center; font-size: 25px;">Add New Product <i class='fas fa-plus-square'></i></h2>
<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">
<form action="addNewProductAction.jsp" method="post">
<h3 style="color: Black;">Product ID:  <%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="form-group">
              <label class="control-lable" for="name">Enter Name of the Product: </label>
             <input class="form-control" type="text" name="name" placeholder="Product Name" required>
             </div>
<div class="form-group">
              <label class="control-lable" for="category">Enter Category of the Product: </label>
             <input class="form-control" type="text" name="category" placeholder="Product category" required>
             </div>
<div class="form-group">
              <label class="control-lable" for="price">Enter Price of the Product: </label>
             <input class="form-control" type="number" name="price" placeholder="Product Price" required>
             </div>
<div class="form-group">
<h3>Active</h3>
<select class="form-control" name="active">
	<option value="Yes">Yes</option>
	<option value="No">No</option>
</select> 
<hr>
</div>
 <center><button class="btn btn-primary">Save <i class='far fa-arrow-alt-circle-right'></i></button></center>
</form>
</div>
</div>
</div>
</div>

</body>
<br><br><br>

</body>
</body>
</html>