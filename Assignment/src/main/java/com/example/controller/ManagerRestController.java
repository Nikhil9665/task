package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.pojo.Manager;
import com.example.repository.ManagerRepository;
@RestController
public class ManagerRestController {

	@Autowired ManagerRepository managerRepository;
	
	@GetMapping(value="/getAllManager")
	public List<Manager> getAllManager(){
		List<Manager> managerList=null;
		try {
			managerList=managerRepository.findAll();

		} catch (Exception e) {
			e.printStackTrace();
  		}
		return managerList;
	}
	@PostMapping(value="/saveManager",headers="Accept=application/json")
	public void saveManager(@RequestBody Manager manager){
		try {
			
			managerRepository.save(manager);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@PutMapping(value="/updateManager",headers="Accept=application/json")
	public void updateManager(@RequestBody Manager manager){
		try {
			
			managerRepository.save(manager);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@GetMapping(value="/deleteManager/{managerId}")
	public void deleteManager(@PathVariable("managerId") int managerId){
		try {
			
			managerRepository.delete(managerId);

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	@GetMapping(value="/getByOneManager/{managerId}")
	public Manager getByOneManager(@PathVariable("managerId") int managerId){
		Manager manager=null;
		try {
			
			manager=managerRepository.findOne(managerId);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return manager;
	}
	
}
