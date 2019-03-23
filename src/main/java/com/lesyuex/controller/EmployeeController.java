package com.lesyuex.controller;

import com.lesyuex.entity.Employee;
import com.lesyuex.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class EmployeeController {

	@Autowired
	private  EmployeeService employeeService;

	/**
	查询所有员工
* */
@RequestMapping(value = "/queryAll")
public ModelAndView test(){

	List<Employee> list = employeeService.queryAll();
	ModelAndView modelAndView = new ModelAndView();
	modelAndView.setViewName("index");
	modelAndView.addObject("list",list);
	return modelAndView;
}
}
