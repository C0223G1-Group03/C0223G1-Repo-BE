package com.example.customer.customer.service;


import com.example.customer.customer.model.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> displayList();
    void add(Employee employee);
    boolean delete(int id);
    void update(Employee employee);
    Employee search(int id);
}
