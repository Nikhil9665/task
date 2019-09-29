<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="home.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<base>

<title>Insert title here</title>
</head>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>

 
<body>

<div class="form">
	<form ng-submit="submitEmployee()" class="Form-horizontal">
		<table>
		
			<tr>
				<th colspan="2"><center>Add/Edit Employee</center></th>
			</tr>

			<tr>
				<td>Employee First Name</td>
				<td><input type="text" ng-model="employeeForm.empFirstname" /></td>
			</tr>
			<tr>
				<td>Employee Last Name</td>
				<td><input type="text" ng-model="employeeForm.empLastname" /></td>
			</tr>
			
			<tr>
				<td>Employee Address</td>
				<td><input type="text" ng-model="employeeForm.empAddress" /></td>
			</tr>
			
			<tr>
				<td>DOB</td>
				<td><input type="text" ng-model="employeeForm.empDob" /></td>
			</tr>
			
			<tr>
				<td>Mobile Number</td>
				<td><input type="text" ng-model="employeeForm.empMobileNo" /></td>
			</tr>
			
			<tr>
				<td>City</td>
				<td><input type="text" ng-model="employeeForm.city" /></td>
			</tr>
			
			
			<tr>
				<td colspan="2" id="saveBtn"><input type="submit" value="Save"
					class="blue-button" />
				</td>
				<td>
					<a href="getCancel">Cancel</a>
				</td>
			</tr>
		</table>
	</form>
	</div>


</body>
</html>