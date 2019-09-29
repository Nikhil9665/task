<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/signup.css" rel="stylesheet">

	<a href="getBack" style="float:inherit; font-size: 30px;">
	<span class="glyphicon glyphicon-circle-arrow-left"></a>


<body>

<h3>Registration Form</h3>

<div class="container">
<spring:form action="addManager" method="POST" modelAttribute="mData">

<spring:hidden path="managerId"/>

<div class="form-group">
<div class="row">

<div class="col-md-6">
<spring:label path="managerFirstname">First Name</spring:label>
<spring:input path="managerFirstname" placeholder="Enter First Name" class="form-control"/>
</div>

<div class="col-md-6">
<spring:label path="managerLastname">Last Name</spring:label>
<spring:input path="managerLastname" placeholder="Enter Last Name" class="form-control"/>
</div>

</div>
</div>

<div class="form-group">
<div class="row">

<div class="col-md-6">
<spring:label path="email">Email</spring:label>
<spring:input path="email" placeholder="Enter Mail Id" class="form-control"/>
</div>

<div class="col-md-6">
<spring:label path="password">Enter Password</spring:label>
<spring:input path="password" placeholder="Enter Password" class="form-control"/>
</div>
</div>
</div>


<div class="form-group">
<div class="row">
<div class="col-md-6">
<spring:label path="managerAddress">Address</spring:label>
<spring:input path="managerAddress" placeholder="Enter Address" class="form-control"/>
</div>

<div class="col-md-6">
<spring:label path="managerDob">DOB</spring:label>
<spring:input path="managerDob" placeholder="Enter Date Of Birth" class="form-control"/>
</div>

</div>
</div>


<div class="form-group">
<div class="row">

<div class="col-md-6">
<spring:label path="company">Company Name</spring:label>
<spring:input path="company" placeholder="Enter Company Name" class="form-control"/>
</div>

</div>
</div>


<div class="form-group">
<div class="row">
<div class="col-md-2">
<input type="submit" value="Signup" class="form-control" style="background-color: blue;color: white;">
<a href="/getLogin">Already account?</a>
</div>
</div>
</div>
</spring:form>
</div>

</body>
 
</html>