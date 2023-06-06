package com.example.case_study.service.employee;

import com.example.case_study.model.employee.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> displayList();
    void add(Employee employee);
    boolean delete(int id);
    void update(Employee employee);
    Employee search(int id);
    boolean findEmployee(Employee employee);
}
