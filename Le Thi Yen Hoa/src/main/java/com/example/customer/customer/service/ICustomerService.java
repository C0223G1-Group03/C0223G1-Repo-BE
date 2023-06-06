package com.example.customer.customer.service;

import com.example.customer.customer.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> displayList();
    void add(Customer customer);
    boolean delete(int id);
    void update(Customer customer);
    Customer search(int id);
}
