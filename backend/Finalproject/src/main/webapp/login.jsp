<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>




<body style="background-image: url('https://static.vecteezy.com/system/resources/previews/004/530/916/non_2x/luxurious-black-gold-background-free-vector.jpg');">
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style>
body {
  background-color: black;
  font-family: cursive;
}

.glow {
  font-size: 80px;
  color: #fff;
  text-align: center;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }
  
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}
</style>
  
</head>
<body>
<h1 class="glow">ONLINE SHOPPING </h1>

<form action="loginAction.jsp" method="post">
<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">


<div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h4 style="color:#FF0000">Incorrect Username or Password!!</h4>
<%}%>
<%
if("invalid".equals(msg))
{
%>
<h4 style="color:#FF0000">Some thing Went Wrong! Try Again !</h4>
<%} %>
     
</div>

	<h2 class="text-center">Login</h2>
	<br>
		<div class="form-group">
              <label class="control-lable" for="email">Email</label>
             <input type="email" name="email" class="form-control" placeholder="Enter Email">
             </div>
             
             <div class="form-group">
             <br>
             <label class="control-lable" for="password">Password</label>
             <br>
         <input type="password" name="password" class="form-control" placeholder="Enter Password">
         </div>
         <br>
         
         <div class="pull-right">
         <button type="submit" class="btn btn-primary">Submit</button>
         
          <a class="btn btn-primary" href="signup.jsp" role="button">Signup</a>
              <a class="btn btn-primary" href="forgotPassword.jsp" role="button">Forgot Password?</a>
          </div>
</div>
</div>
</div>
<div class="col-md-3"></div>
</div>
</form>

  
  


</body>
</html>