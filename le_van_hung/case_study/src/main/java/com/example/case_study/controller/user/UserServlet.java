package com.example.case_study.controller.user;

import com.example.case_study.model.employee.Employee;
import com.example.case_study.model.user.User;
import com.example.case_study.service.employee.EmployeeService;
import com.example.case_study.service.employee.IEmployeeService;
import com.example.case_study.service.user.IUserService;
import com.example.case_study.service.user.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/user")
public class UserServlet extends HttpServlet {
    private IEmployeeService employeeService = new EmployeeService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
        List<Employee> list = employeeService.displayList();
        request.setAttribute("list",list);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/login_form.jsp");
        requestDispatcher.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        Employee employee = new Employee(account,password);
        if(action == null){
            action = "";
        }
        switch (action){
            case "login":
                if(employeeService.findEmployee(employee)){
                    response.sendRedirect("view/main_menu/admin_show.jsp");
                }else{
                    String message = "Tài khoản hoặc password không đúng";
                    request.setAttribute("message",message);
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/user/login_form.jsp");
                    requestDispatcher.forward(request,response);
                }
                break;
            default:
                break;
        }
    }
}
