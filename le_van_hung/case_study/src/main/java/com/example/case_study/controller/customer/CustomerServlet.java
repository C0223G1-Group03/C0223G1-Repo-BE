package com.example.case_study.controller.customer;



import com.example.case_study.model.customer.Customer;
import com.example.case_study.service.customer.CustomerService;
import com.example.case_study.service.customer.ICustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private ICustomerService customerService=new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
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
        String massage = request.getParameter("massage");
        request.setAttribute("customerList",customerList);
        request.setAttribute("massage",massage);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("view/customer/list.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
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
        if(customer==null){
            response.sendRedirect("/view/customer/list.jsp");
        }else{
        List<Customer> customerList=new ArrayList<>();
        customerList.add(customer);
        request.setAttribute("customerList",customerList);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("/view/customer/list.jsp");
        requestDispatcher.forward(request, response);}
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
        response.sendRedirect("/customer?massage=Sua thanh cong");
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id;
        id=Integer.parseInt(request.getParameter("isDelete"));
        customerService.delete(id);
        response.sendRedirect("/customer?massage=Xoa thanh cong");
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name= request.getParameter("name");
        String dateOfBirth= request.getParameter("dateOfBirth");
        boolean gender= request.getParameter("gender").equals("Male");
        String citizenId= request.getParameter("citizenId");
        String phone= request.getParameter("phone");
        String address= request.getParameter("address");
        String email= request.getParameter("email");
        customerService.add(new Customer(name,address,dateOfBirth,gender,phone,email,citizenId));
//        request.setAttribute("status","success");
        response.sendRedirect("/customer?massage=Them thanh cong");

//        if(true){
//            String message="success";
//            request.setAttribute("message",message);
//            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/customer");
//            requestDispatcher.forward(request,response);
//        }else {
//            String message="error";
//            request.setAttribute("message",message);
//            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/customer");
//            requestDispatcher.forward(request,response);
//        }
    }
}
