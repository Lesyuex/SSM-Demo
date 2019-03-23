package com.lesyuex.service.Impl;

import com.lesyuex.dao.EmployeeDAO;
import com.lesyuex.entity.Employee;
import com.lesyuex.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDAO employeeDAO;

	public List<Employee> queryAll(){

		return employeeDAO.queryAll();
	}


		}
