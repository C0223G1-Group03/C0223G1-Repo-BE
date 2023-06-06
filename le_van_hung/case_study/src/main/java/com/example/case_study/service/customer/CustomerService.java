package com.example.case_study.service.customer;



import com.example.case_study.model.customer.Customer;
import com.example.case_study.repo.customer.CustomerRepo;
import com.example.case_study.repo.customer.ICustomerRepo;

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
