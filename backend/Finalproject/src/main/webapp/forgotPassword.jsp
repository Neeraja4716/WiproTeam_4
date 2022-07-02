<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body style="background-image:url('https://media.istockphoto.com/vectors/forgot-password-computer-concept-vector-id1226829688?k=20&m=1226829688&s=612x612&w=0&h=qVAQUzUC3jzzfmmahQoZ0hx20bbWTEhVXvCq2QYKiA8=');">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>ForgotPassword</title>
</head>
<body>
<div class="jumbotron">
<center><h1>Online Shopping</h1></center></div>

<div class='whyforgotPassword'>
 <%
 String msg=request.getParameter("msg");
 if("done".equals(msg))
{
%>  
<center><h1 style="background-color:#008000"><b>Password Changed Successfully!</b></h1></center>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<center><h1 style="background-color:rgb(255, 99, 71);"><b>Some thing Went Wrong! Try Again !</b></h1></center>
<%} %>
    
  </div>	
  
  
  <div id='container'>
	<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">
	<h2 class="text-center">Forgot Password!</h2>
	<br>
  <div class='signup' >
    <form action="forgotPasswordAction.jsp" method="post">
    <div>
             <label class="control-lable" for="email">Email</label>
    <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required>
         </div>
         <br>
    <div class="form-group">
              <label class="control-lable" for="number">Mobile Number</label>
             <input type="number" name="mobileNumber" class="form-control" placeholder="Enter Your Mobile Number" required>
             </div>
    <div class="form-group">
    <select name="securityQuestion">
    <option value="What is your nick name?">What is your nick name?</option>
    <option value="What is your favorite place?">What is your favorite place?</option>
    <option value="Who is your favorite sports person?">Who is your favorite sports person?</option>
    <option value="What is your bestfriend name?">What is your best friend name?</option>
    </select>
    </div>
    <div class="form-group">
             <input type="text" name="answer" class="form-control" placeholder="Enter Answer" required>
             </div>
    <div class="form-group">
             <br>
             <label class="control-lable" for="password">Password</label>
             <input type="password" class="form-control" name="newPassword" placeholder="Enter new Password" required></div>
             <br>
    
    <input class="btn btn-primary" type="submit" value="save" role="button" >
    </form>
    
      <h2><a class="btn btn-primary" href="login.jsp" role="button">Login</a></h2>
      </div>
</div>
</div>
<div class="col-md-3"></div>
</div>
      
  </div>
  
  
  
  
</div>
</body>
</body>
</html>