package com.example.case_study.repo.customer;


import com.example.case_study.model.customer.Customer;

import java.util.List;

public interface ICustomerRepo {
    List<Customer> displayList();
    void add(Customer customer);
    boolean delete(int id);
    void update(Customer customer);
    Customer search(int id);
}
