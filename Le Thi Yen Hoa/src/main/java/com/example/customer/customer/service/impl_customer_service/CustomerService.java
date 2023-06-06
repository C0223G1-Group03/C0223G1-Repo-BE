package com.example.customer.customer.service.impl_customer_service;

import com.example.customer.customer.model.Customer;
import com.example.customer.customer.repository.ICustomerRepo;
import com.example.customer.customer.repository.impl_customer_repo.CustomerRepo;
import com.example.customer.customer.service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    private ICustomerRepo customerRepo=new CustomerRepo();

    @Override
    public List<Customer> displayList() {
        return customerRepo.displayList();
    }

    @Override
    public void add(Customer customer) {
    customerRepo.add(customer);
    }

    @Override
    public boolean delete(int id) {
       return customerRepo.delete(id);
    }

    @Override
    public void update(Customer customer) {
        customerRepo.update(customer);
    }

    @Override
    public Customer search(int id) {
        return customerRepo.search(id);
    }
}
