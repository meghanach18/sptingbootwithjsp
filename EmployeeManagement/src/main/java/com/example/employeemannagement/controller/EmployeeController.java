package com.example.employeemannagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.employeemannagement.model.Employee;
import com.example.employeemannagement.service.EmployeeService;

@Controller
public class EmployeeController {

		@Autowired
		EmployeeService employeeService;
		
		@RequestMapping(value="/list", method=RequestMethod.GET)
		public ModelAndView getList() {
			ModelAndView employeeModel = new ModelAndView();
			List<Employee> employees = employeeService.getAllEmployee();
			employeeModel.addObject("employees", employees);
			employeeModel.setViewName("employee_list");
			return employeeModel;
		}
		@RequestMapping(value="/insertPage", method=RequestMethod.GET)
		 public ModelAndView addArticle() {
		  ModelAndView model = new ModelAndView();
		  Employee e = new Employee();
		  model.addObject("employeeForm", e);
		  model.setViewName("employee");
		  return model;
		 }
		
		@RequestMapping(value="/update/{id}", method=RequestMethod.GET)
		 public ModelAndView addArticle(@PathVariable("id") int id) {
		  ModelAndView model = new ModelAndView();
		  Employee e = employeeService.selectEmployeeById(id);
		  model.addObject("employeeForm", e);
		  model.setViewName("employee_update");
		  return model;
		 }
		
		@RequestMapping(value="/insert", method=RequestMethod.POST)
		public ModelAndView insertEmployee(@ModelAttribute("employeeForm") Employee e) {
			employeeService.insertEmployee(e);
			return new ModelAndView("redirect:/list");
		}
		
		@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
		public ModelAndView deleteEmployee(@PathVariable("id") int id) {
			employeeService.deleteEmployee(id);
			return new ModelAndView("redirect:/list");
		}
		 
		@RequestMapping(value = { "/login" }, method = { RequestMethod.GET })
		public String login(Model model, String error, String logout) {
			if (error != null)
				model.addAttribute("errorMsg", "Your username and password entered are invalid.");
			if (logout != null)
				model.addAttribute("msg", "You have been logged out successfully!.");
			return "login";
		}
		@GetMapping("/wel")
		public String hello()
		{
		return "welcome";
		}
		
}
