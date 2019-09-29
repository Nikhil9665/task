<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/home.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>



<script type="text/javascript">
            var app = angular.module("EmployeeManagement", []);
         
            //Controller Part
            app.controller("EmployeeController", function($scope, $http) {
         
               
                $scope.employees = [];
                $scope.employeeForm = {
                    empId : -1,
                    empFirstname : "",
                    empLastname : "",
                    empAddress : "",
                    empDob : "",
                    empMobileNo : "",
                    city : ""

                };
         
                //Now load the data from server
                _refreshEmployeeData();
         
                //HTTP POST/PUT methods for add/edit employee 
                // with the help of empId, we are going to find out whether it is put or post operation
                
                
                 $scope.submitEmployee = function() {
         
                    var method = "";
                    var url = "";
                    if ($scope.employeeForm.empId == -1) {
                        //Id is absent in form data, it is create new employee operation
                        method = "POST";
                        url = '/addEmployee';
                    }
                    
                    else(confirm("Are You Sure?")); {
                        //Id is present in form data, it is edit employee operation
                        method = "PUT";
                        url = '/updateEmployee';
                    }
         
                    $http({
                        method : method,
                        url : url,
                        data : angular.toJson($scope.employeeForm),
                        headers : {
                            'Content-Type' : 'application/json'
                        }
                   			
                    }).then( _success, _error );
                    ("cancel");
                };
                
                
               
                //HTTP GET- delete employee by Id
    
                
                $scope.deleteEmployee = function(employee) {
                	if (confirm("Are you sure?")) {

                    $http({
                        method : 'GET',
                        url : '/deleteEmployee/' + employee.empId
                    
                    }).then(_success, _error);
                	}else{
                		("cancel");
                	}
                    
                };
 
             // In case of edit, populate form fields and assign form.empId with employee empId
                $scope.editEmployee = function(employee) {
                  
                    $scope.employeeForm.empId = employee.empId;
                    $scope.employeeForm.empFirstname = employee.empFirstname;
                    $scope.employeeForm.empLastname = employee.empLastname;
                    $scope.employeeForm.empAddress = employee.empAddress;
                    $scope.employeeForm.empDob = employee.empDob;
                    $scope.employeeForm.empMobileNo = employee.empMobileNo;
                    $scope.employeeForm.city = employee.city;
                 
                };
         
                /* Private Methods */
                //HTTP GET- get all employee list
                
              function _refreshEmployeeData() {
                    $http({
                        method : 'GET',
                        url : 'http://localhost:8080/getAllEmployee'
                    }).then(function successCallback(response) {
                        console.log(response.data);

                        $scope.employees = response.data;
                    }, function errorCallback(response) {
                        console.log(response.statusText);
                    });
                }
         
         
                function _success(response) {
                    _refreshEmployeeData();
                    _clearFormData()
                }
         
                function _error(response) {
                    console.log(response.statusText);
                }
         
                //Clear the form
                function _clearFormData() {
                  
                    
                    $scope.employeeForm.empId = -1;
                    $scope.employeeForm.empFirstname = "";
                    $scope.employeeForm.empLastname = "";
                    $scope.employeeForm.empAddress = "";
                    $scope.employeeForm.empDob = "";
                    $scope.employeeForm.empMobileNo = "";
                    $scope.employeeForm.city = "";
                
                };
            });
        </script>


</head>


	<a href="getLogout" style="float:inherit; font-size: 30px;">
	<span class="glyphicon glyphicon-log-out"></a>
	
	
		 <a href="getForm" style="float:right; font-size: 30px;">
				<span class="glyphicon glyphicon-plus"></a>

<body ng-app="EmployeeManagement" ng-controller="EmployeeController">
	<h3>Employee List</h3>
	<div class="container">
	
	<table class="table table-bordered">
		<tr>
			<th>Id</th>
			<th>Employee First Name</th>
			<th>Employee Last Name</th>
			<th>Address</th>
			<th>DOB</th>
			<th>Mobile Number</th>
			<th>City</th>
			<th>Action</th>
			

		</tr>

		<tr ng-repeat="employee in employees">
		
			<td>{{ employee.empId }}</td>
			<td>{{ employee.empFirstname }}</td>
			<td>{{ employee.empLastname }}</td>
			<td>{{ employee.empAddress }}</td>
			<td>{{ employee.empDob }}</td>
			<td>{{ employee.empMobileNo }}</td>
			<td>{{ employee.city }}</td>
			
			<td><a ng-click="editEmployee(employee)"><span class="glyphicon glyphicon-edit"></span></a>&nbsp;|
			 <a ng-click="deleteEmployee(employee)"><span class="glyphicon glyphicon-trash"></span></a></td>
		
		</tr>

	</table>
	</div>
</body>


</html>