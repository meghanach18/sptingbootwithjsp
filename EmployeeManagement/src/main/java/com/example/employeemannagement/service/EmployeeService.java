package com.example.employeemannagement.service;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.employeemannagement.model.Employee;
import com.example.employeemannagement.repository.EmployeeRepository;
@Service
public class EmployeeService {
	@Autowired
	EmployeeRepository employeeRepository;
	
	public List<Employee> getAllEmployee(){
		return employeeRepository.findAll();
	}
	
	public Employee insertEmployee(Employee e){
		return employeeRepository.save(e);
	}
	
	
	public Employee updateEmployee(int id,Employee e){
		Optional<Employee> empChack = employeeRepository.findById(id);
		if(!empChack.isPresent()) {
			return null;
		}
		e.setId(id);
		return employeeRepository.save(e);
	}
	
	
	public Employee insertOrUpdateEmployee(Employee e){
		return employeeRepository.save(e);
	}
	
	
	public boolean deleteEmployee(int id){
		Optional<Employee> empChack = employeeRepository.findById(id);
		if(!empChack.isPresent()) {
			return false;
		}else {
			employeeRepository.deleteById(id);
			return true;
		}
	}
	
	
	public List<Employee> selectEmployee(){
		return employeeRepository.findAll();
	}
	
	
	public Employee selectEmployeeById(int id){
		Optional<Employee> empChack = employeeRepository.findById(id);
		if(!empChack.isPresent()) {
			return null;
		}else {
			return empChack.get();
		}
	}

	
	public List<Employee> selectPatientByCriteria(Employee employee){
		List<Employee> allEmployee = employeeRepository.findAll();
		
		if(employee.getId()== 0);
		else{
			for(Iterator<Employee> it = allEmployee.listIterator(); it.hasNext();){
				if(it.next().getId()!=employee.getId())
					it.remove();
			}
			if(allEmployee.isEmpty())
				return null;
		}
		
		if(employee.getName()=="");
		else{
			for(Iterator<Employee> it = allEmployee.listIterator(); it.hasNext();){
				if(it.next().getName().equals(employee.getName()));
				else{
					it.remove();
				}
			}
			if(allEmployee.isEmpty())
				return null;
		}
		
		if(employee.getAddress()=="");
		else{
			for(Iterator<Employee> it = allEmployee.listIterator(); it.hasNext();){
				if(it.next().getAddress().equals(employee.getAddress()));
				else{
					it.remove();
				}
			}
			if(allEmployee.isEmpty())
				return null;
		}
		
		if(employee.getPhone()=="");
		else{
			for(Iterator<Employee> it = allEmployee.listIterator(); it.hasNext();){
				if(it.next().getPhone().equals(employee.getPhone()));
				else{
					it.remove();
				}
			}
			if(allEmployee.isEmpty())
				return null;
		}
		return allEmployee;
		
	}

}
