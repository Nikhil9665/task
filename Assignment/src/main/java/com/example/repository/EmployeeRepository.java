package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.pojo.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer>{

}
