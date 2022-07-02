<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<html>
<body style="background-image:url('https://wallpapercave.com/wp/wp7566336.jpg');">
<head>
<link rel="stylesheet" href="css/bill.css">
<title>Bill</title>
<style >
table,th,td{
border:1px solid black;
border-collapse: collapse;
text-align: center;
background-color:teal;
}
</style>
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
	int total=0;
	int sno=0;
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select sum(total) from cart where email='"+email+"' and status='bill'");
	while(rs.next())
	{
		total=rs.getInt(1);
	}
	ResultSet rs2=st.executeQuery("select *from users inner join cart where cart.email='"+email+"' and cart.status='bill'");
	while(rs2.next())
	{
%>
<h3>Online shopping Bill</h3>
<hr>
<div class="left-div"><h5>Name: <%=rs2.getString(1) %> </h5></div>
<div class="right-div-right"><h5>Email:  <%out.println(email); %></h5></div>
<div class="right-div"><h5>Mobile Number:  <%=rs2.getString(20) %> </h5></div>  

<div class="left-div"><h5>Order Date:  <%=rs2.getString(21) %> </h5></div>
<div class="right-div-right"><h5>Payment Method:  <%=rs2.getString(23) %> </h5></div>
<div class="right-div"><h5>Expected Delivery:  <%=rs2.getString(22) %> </h5></div> 

<div class="left-div"><h5>Transaction Id:  <%=rs2.getString(24) %> </h5></div>
<div class="right-div-right"><h5>City: <%=rs2.getString(17) %>  </h5></div> 
<div class="right-div"><h5>Address:  <%=rs2.getString(16) %> </h5></div> 

<div class="left-div"><h5>State: <%=rs2.getString(18) %>  </h5></div>
<div class="right-div-right"><h5>Country:  <%=rs2.getString(19) %> </h5></div>  

<hr>
<%break;} %>

	</div>
	</div>
	</div>
	</div>
	<br>
<h3>Product Details</h3>	
<table style="width: 100%"id="customers">

  <tr>
    <th>S.No</th>
    <th>Product Name</th>
    <th>category</th>
    <th>Price</th>
    <th>Quantity</th>
     <th>Sub Total</th>
  </tr>
  <%
  ResultSet rs1=st.executeQuery("select *from cart inner join product where cart.product_id and cart.email='"+email+"'and cart.status='bill'");
  while(rs1.next())
  {
	  sno=sno+1;
  %>
  <tr>
    <td><%out.println(sno); %></td>
    <td><%=rs1.getString(17) %></td>
    <td><%=rs1.getString(18) %></td>
    <td><%=rs1.getString(19) %></td>
    <td><%=rs1.getString(3) %></td>
     <td><%=rs1.getString(5) %></td>
  </tr>
  <tr>
<%} %>
</table>
<h3>Total: <%out.println(total); %></h3>
<center>
<a href="continueShopping.jsp"><button class="button left-button">Continue Shopping</button></a>
<a onclick="window.print();"><button class="button right-button">Print</button></a>
</center>
<br><br><br><br>
<%
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</body>
</html>