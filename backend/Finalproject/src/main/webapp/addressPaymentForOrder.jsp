<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="../footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body style="background-image: url('https://img.freepik.com/free-vector/e-commerce-icon-robotic-hand-internet-shopping-online-purchase-add-cart_127544-586.jpg?w=2000');">
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
if(window.history.forward(1)!=null)
	window.history.forword(1) 

	</script>
<style>
table,th,td{
border:1px solid black;
border-collapse: collapse;
text-align: center;
background-color:#808080;
}
</style>
</head>
<body>
<br>
<table style="width:100%">
<thead>
<%
//String email=session.getAttribute("email").toString();
int total=0;
int sno=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
	while(rs1.next())
	{
		total=rs1.getInt(1);
	}
%>
          <tr>
          <th scope="col"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
            <th scope="col" style="background-color: #808080;">Total: <i class="fa fa-inr"></i><%out.println(total); %> </th>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
          </tr>
        </thead>
        <tbody>
        <%
        ResultSet rs=st.executeQuery("select *from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
    	while(rs.next())
    	{
        %>
        
          <tr>
          <%sno=sno+1 ;%>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(4) %></td>
            <td><%=rs.getString(8) %> </td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(10) %></td>
            </tr>
         <%}
    	ResultSet rs2=st.executeQuery("select *from users where email='"+email+"'");
    	while(rs2.next())
    	{
    	%>
        </tbody>
      </table>
      <br>
<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">    
<hr style="width: 100%">
<form action="addressPaymentForOrderAction.jsp" method="post"> 
 <div class="left-div">
 <h5 style="color:#231F20">Enter Address</h5>
<input class="input-style" type="text" name="address" value="<%=rs2.getString(7)%>" placeholder="Enter Address" required>
 </div>

<div class="right-div">
<h5 style="color:#231F20">Enter city</h5>
<input class="input-style" type="text" name="city" value="<%=rs2.getString(8)%>" placeholder="Enter City" required>
</div> 

<div class="left-div">
<h5 style="color:#231F20">Enter State</h5>
<input class="input-style" type="text" name="state" value="<%=rs2.getString(9)%>" placeholder="Enter State" required>
</div>

<div class="right-div">
<h5 style="color:#231F20">Enter country</h5>
<input class="input-style" type="text" name="country" value="<%=rs2.getString(10)%>" placeholder="Enter Country" required>
</div>
<h5 style="color: #808080">*If there is no address its mean that you did not set you address!</h5>
<h5 style="color: #808080">*This address will also updated to your profile</h5>
<hr style="width: 100%">
<div class="left-div">
<h5 style="color:#231F20">Select way of Payment</h5>
 <select class="input-style" name="paymentMethod">
 <option value="Cash on Delivery(COD)">Cash on Delivery(COD) </option>
 <option value="Online Payment">Online Payment </option>
 </select>
</div>

<div class="right-div">
<h5 style="color:#231F20">Pay online on this wipro_team@pay.com</h5>
<input class="input-style" type="text" name="transactionId"  placeholder="Enter Transaction ID" >
<h5 style="color: #808080">*If you select online Payment then enter you transaction ID here otherwise leave this blank</h5>
</div>
<hr style="width: 100%">

<div class="left-div">
<h5 style="color:#231F20">Mobile Number</h5>
<input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3)%>" placeholder="Enter Mobile Number" required>
<h5 style="color: #808080">*This mobile number will also updated to your profile</h5>
</div>
<div class="right-div">
<h5 style="color: #808080">*If you enter wrong transaction id then your order will we can cancel!</h5>
<button class="button" type="submit">Proceed to Generate Bill & Save <i class='far fa-arrow-alt-circle-right'></i></button>
<h5 style="color: #808080">*Fill form correctly</h5>
</div>
</form>
<%
    	}
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

      <br>
      <br>
      <br>

</body>
</body>
</html>