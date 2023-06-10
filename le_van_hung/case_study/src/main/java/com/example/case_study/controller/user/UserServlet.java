package com.example.case_study.controller.user;

import com.example.case_study.model.customer.Customer;
import com.example.case_study.model.employee.Employee;
import com.example.case_study.model.order.Order;
import com.example.case_study.model.product.Product;
import com.example.case_study.model.user.User;
import com.example.case_study.service.customer.CustomerService;
import com.example.case_study.service.customer.ICustomerService;
import com.example.case_study.service.employee.EmployeeService;
import com.example.case_study.service.employee.IEmployeeService;
import com.example.case_study.service.order.IOrderService;
import com.example.case_study.service.order.OrderService;
import com.example.case_study.service.product.IProductService;
import com.example.case_study.service.product.ProductService;
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
    private ICustomerService customerService = new CustomerService();
    private IProductService productService = new ProductService();
    private IOrderService orderService = new OrderService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        if (action.equals("logout")) {
            response.sendRedirect("/display");
        } else if (action.equals("order")) {
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("idProduct",id);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/signup.jsp");
            requestDispatcher.forward(request,response);
        } else {
            List<Employee> list = employeeService.displayList();
            request.setAttribute("list", list);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/login_form.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        Employee employee = new Employee(account, password);
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                if (employeeService.findEmployee(employee)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("employee", employee);
                    request.setAttribute("dangnhap","Đăng nhập thành công");
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/main_menu/admin_show.jsp");
                    requestDispatcher.forward(request, response);
                } else {
                    String message = "Tài khoản hoặc password không đúng";
                    request.setAttribute("message", message);
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/user/login_form.jsp");
                    requestDispatcher.forward(request, response);
                }
                break;
            case "order":
                int idProduct = Integer.parseInt(request.getParameter("idProduct"));
                Product product = productService.findId(idProduct);
                String nameCustomer = request.getParameter("name");
                String dateOfBirth = request.getParameter("dateOfBirth");
                boolean gender = request.getParameter("gender").equals("Nam");
                String citizenId = request.getParameter("citizenId");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");
                String email = request.getParameter("email");
//                int id, String name, String address, String dateOfBirth, boolean gender, String phone, String email, String citizenId
                Customer customer = new Customer(nameCustomer,address,dateOfBirth,gender,phone,email,citizenId);
                customerService.add(customer);
                Order order = new Order(product,customer);
                orderService.addOrderByCusPro(order);
                HttpSession session = request.getSession();
                session.setAttribute("order","Thông tin đã được lưu, nhân viên sẽ sớm liên hệ với bạn");
                response.sendRedirect("/display?action=display");
                break;

            default:
                response.sendRedirect("/view/main_menu/giao_dien.jsp");
                break;
        }
    }
}
