package com.example.case_study.service.employee;

import com.example.case_study.model.employee.Employee;
import com.example.case_study.repo.employee.EmployeeRepo;
import com.example.case_study.repo.employee.IEmployeeRepo;

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

    @Override
    public boolean findEmployee(Employee employee) {
        return employeeRepo.findEmployee(employee);
    }
}
