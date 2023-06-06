package com.example.customer.customer.controller;

import com.example.customer.customer.model.Customer;
import com.example.customer.customer.service.ICustomerService;
import com.example.customer.customer.service.impl_customer_service.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private ICustomerService customerService=new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String action=request.getParameter("action");
    if(action==null){
        action="";
    }
    switch (action){
        case "showAddForm":
            response.sendRedirect("/view/customer/add.jsp");
            break;
        case "showDelete":
            //delete
            break;
        case "showUpdateForm":
            showUpdateForm(request, response);
            //update
            break;
        case "showSearchForm":
            //search
            break;
        default:
            showList(request, response);
    }
    }

    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        Customer customer= customerService.search(id);
        request.setAttribute("customer",customer);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("/view/customer/edit.jsp");
        requestDispatcher.forward(request, response);
        response.sendRedirect("/view/customer/edit.jsp");
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList= customerService.displayList();
        request.setAttribute("customerList",customerList);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("view/customer/list.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "add":
                add(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            case "update":
                //update
                update(request, response);
                break;
            case "search":
                //search
                search(request, response);
                break;
            default:
                showList(request, response);
        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        Customer customer=customerService.search(id);
        List<Customer> customerList=new ArrayList<>();
        customerList.add(customer);
        request.setAttribute("customerList",customerList);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("/view/customer/list.jsp");
        requestDispatcher.forward(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        String name_edit= request.getParameter("name_edit");
        String dateOfBirth_edit= request.getParameter("dateOfBirth_edit");
        boolean gender_edit= request.getParameter("gender").equals("Nam");
        String citizenId_edit= request.getParameter("citizenId");
        String phone_edit= request.getParameter("phone");
        String address_edit= request.getParameter("address");
        String email_edit= request.getParameter("email");
        customerService.update(new Customer(id,name_edit,address_edit,dateOfBirth_edit,gender_edit,phone_edit
                ,email_edit,citizenId_edit));
        response.sendRedirect("/customer");
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id;
        id=Integer.parseInt(request.getParameter("isDelete"));
        customerService.delete(id);
        response.sendRedirect("/customer");
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id;
        id=Integer.parseInt(request.getParameter("id"));
        String name= request.getParameter("name");
        String dateOfBirth= request.getParameter("dateOfBirth");
        boolean gender= request.getParameter("gender").equals("Male");
        String citizenId= request.getParameter("citizenId");
        String phone= request.getParameter("phone");
        String address= request.getParameter("address");
        String email= request.getParameter("email");
        customerService.add(new Customer(id,name,dateOfBirth,citizenId,gender,phone,address,email));
        response.sendRedirect("/customer");
    }
}
