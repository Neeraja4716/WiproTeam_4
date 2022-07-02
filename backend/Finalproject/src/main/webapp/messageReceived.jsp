<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body style="background-image:url('https://static.vecteezy.com/system/resources/previews/000/518/886/non_2x/vector-gray-background-black-and-grey-abstract-wall-and-studio-room.jpg');">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
table,th,td{
border:1px solid black;
border-collapse: collapse;
text-align: center;
border-color: #231F20;
background-color: #D3D3D3;
padding: 15px;
}
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: #E75480; text-align: center; font-size: 30px;">Messages Received <i class='fas fa-comment-alt'></i></div>
<table style="width:100%">
        <thead>
          <tr>
            <th scope="col" style="color: #000000">ID</th>
            <th scope="col" style="color: #000000">Email</th>
            <th scope="col" style="color: #000000">Subject</th>
            <th scope="col" style="color: #000000">Body</th>
          </tr>
        </thead>
        <tbody>
 <%
 try
 {
	 Connection con=ConnectionProvider.getCon();
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery("select *from message");
	 while(rs.next())
	 {
 %>      
          <tr>
            <td style="color: black"><%=rs.getString(1) %></td>
            <td style="color: black"><%=rs.getString(2) %></td>
            <td style="color: black"><%=rs.getString(3) %></td>
            <td style="color: black"><%=rs.getString(4) %></td>
          </tr>
         <%
         }
         }
         catch(Exception e)
         {
        	 System.out.println(e);
         }%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</body>
</html>