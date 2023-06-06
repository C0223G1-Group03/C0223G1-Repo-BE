package com.example.customer.customer.service.impl_employee_service;

import com.example.customer.customer.model.Employee;
import com.example.customer.customer.repository.IEmployeeRepo;
import com.example.customer.customer.repository.impl_employee_repo.EmployeeRepo;
import com.example.customer.customer.service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    private IEmployeeRepo employeeRepo=new EmployeeRepo();
    @Override
    public List<Employee> displayList() {
        return employeeRepo.displayList();
    }

    @Override
    public void add(Employee employee) {
        employeeRepo.add(employee);
    }

    @Override
    public boolean delete(int id) {
        return employeeRepo.delete(id);
    }

    @Override
    public void update(Employee employee) {
        employeeRepo.update(employee);
    }

    @Override
    public Employee search(int id) {
        return employeeRepo.search(id);
    }
}
