<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<title>Signup</title>

<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("photographer.jpg");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
</style>


</head>



<body style="background-image: url('https://www.weirdworm.com/wp-content/uploads/2020/01/Online-Shopping.jpg') ">


<div class="jumbotron">
<center><h1>Online Shopping</h1></center>
	</div>
	
	 <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<center><h1 style="background-color:#008000"><b>Successfully Registered</b></h1></center>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<center><h1 style="background-color:rgb(255, 99, 71);">Some thing Went Wrong! Try Again !</h1></center>
<%} %>
  </div>
	
	<div id='container'>
	<div class='container'> 
<div class='row'> 
<div class="col-md-3"></div>
<div class="col-md-6 col-xs-12">
<div class="jumbotron">
	<h2 class="text-center">Signup</h2>
	<br>
  <div class='signup' >
    <form action="signupAction.jsp" method="post">
    <div class="form-group">
              <label class="control-lable" for="name">Name</label>
             <input type="text" name="name" class="form-control" placeholder="Enter Your Name" required>
             </div>
             <label class="control-lable" for="email">Email</label>
    <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required>
         </div>
         <br>
    <div class="form-group">
              <label class="control-lable" for="number">Mobile Number</label>
             <input type="number" name="number" class="form-control" placeholder="Enter Your Mobile Number" required>
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
             <input type="answer" name="answer" class="form-control" placeholder="Enter Answer" required>
             </div>
    <div class="form-group">
             <br>
             <label class="control-lable" for="password">Password</label>
             <input type="password" class="form-control" name="password" placeholder="Enter Password" required>
             <br>
    
    <input class="btn btn-primary" type="submit" value="signup" role="button" >
    </form>
      <h2><a class="btn btn-primary" href="login.jsp" role="button">Login</a></h2>
      </div>
</div>
</div>
<div class="col-md-3"></div>
</div>
</form>
      
  </div>
 
</div>
	
</body>
</html>