package com.example.case_study.model.order;

import com.example.case_study.model.customer.Customer;
import com.example.case_study.model.employee.Employee;
import com.example.case_study.model.product.Product;

public class Order {
    private int ma_order;
    private String ngay_lam_order;
    private int so_luong_xe;
    private Product product;
    private Customer customer;
    private Employee employee;

    public Order() {
    }

    public Order(Product product, Customer customer) {
        this.product = product;
        this.customer = customer;
    }

    public Order(String ngay_lam_order, int so_luong_xe, Product product, Customer customer) {
        this.ngay_lam_order = ngay_lam_order;
        this.so_luong_xe = so_luong_xe;
        this.product = product;
        this.customer = customer;
    }

    public Order(int ma_order, String ngay_lam_order, int so_luong_xe, Product product, Customer customer) {
        this.ma_order = ma_order;
        this.ngay_lam_order = ngay_lam_order;
        this.so_luong_xe = so_luong_xe;
        this.product = product;
        this.customer = customer;
    }

    public Order(int ma_order, String ngay_lam_order, int so_luong_xe, Product product, Customer customer, Employee employee) {
        this.ma_order = ma_order;
        this.ngay_lam_order = ngay_lam_order;
        this.so_luong_xe = so_luong_xe;
        this.product = product;
        this.customer = customer;
        this.employee = employee;
    }

    public Order(String ngay_lam_order, int so_luong_xe, Product product, Customer customer, Employee employee) {
        this.ngay_lam_order = ngay_lam_order;
        this.so_luong_xe = so_luong_xe;
        this.product = product;
        this.customer = customer;
        this.employee = employee;
    }

    public int getMa_order() {
        return ma_order;
    }

    public void setMa_order(int ma_order) {
        this.ma_order = ma_order;
    }

    public String getNgay_lam_order() {
        return ngay_lam_order;
    }

    public void setNgay_lam_order(String ngay_lam_order) {
        this.ngay_lam_order = ngay_lam_order;
    }

    public int getSo_luong_xe() {
        return so_luong_xe;
    }

    public void setSo_luong_xe(int so_luong_xe) {
        this.so_luong_xe = so_luong_xe;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
}
