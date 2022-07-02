<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp"%>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body style="background-image:url('https://static.vecteezy.com/system/resources/previews/000/112/130/non_2x/gray-grunge-free-vector-texture.jpg');">
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Home</title>
<style>
table,th,td{
border:1px solid black;
border-collapse: collapse;
text-align: center;
border-color: white;
}
</style>
</head>
<body>
<div style="color: Green; text-align: center; font-size: 30px;">Delivered Orders <i class='fas fa-dolly'></i></div>

<table style="color:#ADD8E6; width: 100%" id="customers">
          <tr>
          <th scope="col" style="color: #ADD8E6">Mobile Number</th>
            <th scope="col" style="color: #ADD8E6">Product Name</th>
            <th scope="col" style="color: #ADD8E6">Quantity</th>
            <th scope="col" style="color: #ADD8E6"><i class="fa fa-inr"></i> Sub Total</th>
            <th scope="col" style="color: #ADD8E6">Address</th>
            <th scope="col" style="color: #ADD8E6">City</th>
            <th scope="col" style="color: #ADD8E6">State</th>
            <th scope="col" style="color: #ADD8E6">Country</th>
            <th scope="col" style="color: #ADD8E6">Order Date</th>
             <th scope="col" style="color: #ADD8E6">Expected Delivery Date</th>
             <th scope="col" style="color: #ADD8E6">Payment Method</th>
              <th scope="col" style="color: #ADD8E6">T-ID</th>
              <th scope="col" style="color: #ADD8E6">Status</th>
          </tr>
   <%
   try
   {
	   Connection con=ConnectionProvider.getCon();
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='Delivered'");
	   while(rs.next())
	   {
   %>     
        
          <tr>
          <td scope="col" style="color: aqua"><%=rs.getString(10) %></td>
            <td scope="col" style="color: aqua"><%=rs.getString(17) %></td>
            <td scope="col" style="color: aqua"><%=rs.getString(3) %></td>
            <td scope="col" style="color: aqua"><i class="fa fa-inr"></i>  <%=rs.getString(5) %></td>
                <td scope="col" style="color: aqua"><%=rs.getString(6) %></td>
               <td scope="col" style="color: aqua"><%=rs.getString(7) %></td>
                <td scope="col" style="color: aqua"><%=rs.getString(8) %></td>
                 <td scope="col" style="color: aqua"><%=rs.getString(9) %></td>
             <td scope="col" style="color: aqua"><%=rs.getString(11) %></td>
              <td scope="col" style="color: aqua"><%=rs.getString(12) %></td>
               <td scope="col" style="color: aqua"><%=rs.getString(13) %></td>
               <td scope="col" style="color: aqua"><%=rs.getString(14) %></td>
               <td scope="col" style="color: aqua"><%=rs.getString(15) %></td>
              </tr>
         <%
         }
         }
         catch(Exception e)
         {
        	 System.out.println(e);
         }%>
        </table>
      <br>
      <br>
      <br>

</body>
</body>
</html>