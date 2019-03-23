package com.lesyuex.dao;

import com.lesyuex.entity.Employee;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface EmployeeDAO {

    List<Employee> queryAll();
}
