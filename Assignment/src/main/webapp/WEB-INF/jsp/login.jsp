<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<link href="/css/assignment.css" rel="stylesheet">

<title>Insert title here</title>


</head>
<body  style="background: url(images/laptop.jpg);">



<!-- Take one big container in that we make login form using bootstrap,css for designing -->

<div class="container" style="margin-top: 15%;margin-left: 35%;">
<form action="validateLogin" method="POST">

<div class="form-group">
<div class="col-md-4">
<h3>LOGIN PAGE</h3>
</div>
</div>
<div class="form-group">
<div class="col-md-4">
<label>Enter Email</label>
<input type="text" name="email" class="form-control" placeholder="Enter Email Id">
<small id="emailSec" class="fo">We'll never share your email with anyone else.</small>

</div>
</div>

<div class="form-group">
<div class="col-md-4">
<label>Enter Password</label>
<input type="text" name="password" class="form-control" placeholder="Enter Password">
</div>
</div>


<div class="form-group" style="padding-left: 10px;">
<div class="col-md-4">
<button class="btn btn-success" value="login">Login</button>
<a href="getSignUp">Sign Up</a>

</div>
</div>



</form>
</div>




</body>
</html>