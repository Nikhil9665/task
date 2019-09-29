package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.pojo.Employee;
import com.example.repository.EmployeeRepository;

@RestController
public class EmployeeRestController {

	@Autowired EmployeeRepository employeeRepository;
	
	@GetMapping(value="/getAllEmployee")
	public List<Employee> getAllEmployee(){
		List<Employee> empList=null;
		try {
			
			empList=employeeRepository.findAll();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return empList;
	}
	@PostMapping(value="/addEmployee",headers="Accept=application/json")
	public Employee addEmployee(@RequestBody Employee employee){
		Employee a=null;
		try {
			
			employeeRepository.save(employee);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	@PutMapping(value="/updateEmployee",headers="Accept=application/json")
	public Employee updateEmployee(@RequestBody Employee employee){
		Employee a=null;
		try {
			
			employeeRepository.save(employee);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	@GetMapping(value="/deleteEmployee/{empId}")
	public void deleteEmployee(@PathVariable("empId") int empId){
		try {
			employeeRepository.delete(empId);

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	@GetMapping(value="/editEmployee/{empId}")
	public Employee editEmployee(@PathVariable("empId") int empId){
		Employee employee=null;
		try {
			
			employee=employeeRepository.findOne(empId);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return employee;
	}
}
