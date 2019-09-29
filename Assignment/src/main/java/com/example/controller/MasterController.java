package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.example.pojo.Manager;
import com.example.repository.ManagerRepository;

@Controller
public class MasterController {

	@Autowired ManagerRepository managerRepository;

	
	 /**
     * HTTP GET - Login Page
     * */
	
	@GetMapping(value="/getLogin")
	public ModelAndView getLogin(){
		
		return new ModelAndView("login");
	}
	
	
	@GetMapping(value="/home")
	public ModelAndView home(){
		
		return new ModelAndView("home");
	}
	
	 /**
     * HTTP GET - Go to Emploee Form
     * */
	
	@GetMapping(value="/getForm")
	public ModelAndView getForm(){
		
		return new ModelAndView("form");
	}

	
	 /**
     * HTTP POST - Using this method for manager login
     * */
	
	@SuppressWarnings("unused")
	@PostMapping(value="/validateLogin")
	public ModelAndView validateLogin(@RequestParam("email") String email,@RequestParam("password") String password,HttpSession session){
		
		Manager manager=managerRepository.managerLogin(email, password);
		session.setAttribute("manager", manager);
		int id=manager.getManagerId();
		
		if((manager!=null)&& (manager.getEmail().equals(email)&(manager.getPassword().equals(password)))){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("redirect:home");
		return mv;
		}else{
			return new ModelAndView("login","errorMsg","You Enter Wrong Details");
		}
	}
	
	

	 /**
     * HTTP POST - Sign Up Page
     * */
	
	@GetMapping(value="/getSignUp")
	public ModelAndView getSignUp(){
		ModelAndView m=new ModelAndView();
		m.addObject("mData",new Manager());
		m.setViewName("signup");
		return m;
	}
	
	 /**
     * HTTP POST - Create new Manager
     * */
	
	@PostMapping(value="/addManager")
	public ModelAndView addManager(@ModelAttribute("mData") Manager manager){
		ModelAndView m=new ModelAndView();
		managerRepository.save(manager);
		m.setViewName("redirect:/getLogin");
		return m;
	}
	
	 /**
     * HTTP GET - Get Back
     * */
	
	@GetMapping(value="/getBack")
	public ModelAndView getBack(){
		
		return new ModelAndView("redirect:/getLogin");
	}
	
	 /**
     * HTTP GET - Get Cancel
     * */
	
	@GetMapping(value="/getCancel")
	public ModelAndView getCancel(){
		
		return new ModelAndView("redirect:home");
	}
	 /**
     * HTTP GET - Get Logout
     * */
	
	@GetMapping(value="/getLogout")
	public ModelAndView getLogout(){
		
		return new ModelAndView("login");
	}

	
}
