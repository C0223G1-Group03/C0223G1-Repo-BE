package com.example.customer.customer.controller;

import com.example.customer.customer.model.Employee;
import com.example.customer.customer.service.IEmployeeService;
import com.example.customer.customer.service.impl_employee_service.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EmployeeServlet", value = "/employee")
public class EmployeeServlet extends HttpServlet {
    private IEmployeeService employeeService=new EmployeeService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "showAddForm":
                response.sendRedirect("view/employee/signup.jsp");
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
        Employee employee= employeeService.search(id);
        request.setAttribute("employee",employee);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("/view/employee/edit.jsp");
        requestDispatcher.forward(request, response);
        response.sendRedirect("/view/employee/edit.jsp");
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employeeList= employeeService.displayList();
        request.setAttribute("employeeList",employeeList);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("/view/employee/list.jsp");
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
        Employee employee=employeeService.search(id);
        List<Employee> employeeList=new ArrayList<>();
        employeeList.add(employee);
        request.setAttribute("employeeList",employeeList);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("/view/employee/list.jsp");
        requestDispatcher.forward(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //int id, String name, String address, String dateOfBirth, boolean gender, String phone, String email,
        // String citizenId, User user
        int id=Integer.parseInt(request.getParameter("id"));
        String name_edit= request.getParameter("name_edit");
        String dateOfBirth_edit= request.getParameter("dateOfBirth_edit");
        boolean gender_edit= request.getParameter("gender").equals("Male");
        String citizenId_edit= request.getParameter("citizenId");
        String phone_edit= request.getParameter("phone");
        String address_edit= request.getParameter("address");
        String email_edit= request.getParameter("email");
        String account_edit=request.getParameter("account");
        String password_edit=request.getParameter("password");
        employeeService.update(new Employee(id,name_edit,address_edit,dateOfBirth_edit,gender_edit,phone_edit
                ,email_edit,citizenId_edit,account_edit,password_edit));
        response.sendRedirect("/employee");
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id;
        id=Integer.parseInt(request.getParameter("isDelete"));
        employeeService.delete(id);
        response.sendRedirect("/employee");
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name= request.getParameter("name");
        String dateOfBirth= request.getParameter("dateOfBirth");
        boolean gender= request.getParameter("gender").equals("Male");
        String citizenId= request.getParameter("citizenId");
        String phone= request.getParameter("phone");
        String address= request.getParameter("address");
        String email= request.getParameter("email");
        String account=request.getParameter("account");
        String password=request.getParameter("password");
        employeeService.add(new Employee(name,address,dateOfBirth,gender,phone,email,citizenId,account,password));
        response.sendRedirect("/employee");
    }
}
