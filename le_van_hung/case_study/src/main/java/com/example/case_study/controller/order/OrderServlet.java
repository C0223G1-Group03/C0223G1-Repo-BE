package com.example.case_study.controller.order;
import com.example.case_study.model.customer.Customer;
import com.example.case_study.model.employee.Employee;
import com.example.case_study.model.order.Order;
import com.example.case_study.model.product.Product;
import com.example.case_study.service.customer.CustomerService;
import com.example.case_study.service.customer.ICustomerService;
import com.example.case_study.service.employee.EmployeeService;
import com.example.case_study.service.employee.IEmployeeService;
import com.example.case_study.service.order.IOrderService;
import com.example.case_study.service.order.OrderService;
import com.example.case_study.service.product.IProductService;
import com.example.case_study.service.product.ProductService;
import com.sun.org.apache.xpath.internal.operations.Or;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(name = "OrderServlet", value = "/order")
public class OrderServlet extends HttpServlet {
    private IProductService productService = new ProductService();
    private ICustomerService customerService = new CustomerService();
    private IEmployeeService employeeService = new EmployeeService();
    private IOrderService orderService = new OrderService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "showFormAddOrder":
                showFormAddOrder(req, resp);
                break;
            case "showDetailOrder":
                showDetailOrder(req, resp);
                break;
            default:
                showListOrder(req, resp);
                break;
        }
    }

    private void showListOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String message = req.getParameter("message");
        req.setAttribute("message",message);
        List<Order> orderList = orderService.displayListOrder();
        req.setAttribute("orderList", orderList);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/order/list_order.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showDetailOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int ma_hop_dong= Integer.parseInt(req.getParameter("id"));
        Order orderDetail = orderService.findOrderById(ma_hop_dong);
        req.setAttribute("orderDetail", orderDetail);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/order/order_detail.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showFormAddOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> productList = productService.displayList();
        List<Customer> customerList = customerService.displayList();
        List<Employee> employeeList = employeeService.displayList();
        req.setAttribute("productList", productList);
        req.setAttribute("customerList", customerList);
        req.setAttribute("employeeList", employeeList);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/order/add_order.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                addOrder(req, resp);
                break;
            case "delete":
                deleteOrder(req, resp);
                break;
            default:
                displayMenuOrder(req, resp);
                break;
        }
    }

    private void displayMenuOrder(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher requestDispatcher= req.getRequestDispatcher("view/main_menu/giao_dien.jsp");
        try {
            requestDispatcher.forward(req,resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void addOrder(HttpServletRequest req, HttpServletResponse resp) {
        String ngay_lam_order = req.getParameter("ngay_lam_order");
        int so_luong_xe = Integer.parseInt(req.getParameter("so_luong_xe"));
        int ma_xe = Integer.parseInt(req.getParameter("ma_xe"));
        Product product1 = new Product(ma_xe);
        int ma_khach_hang = Integer.parseInt(req.getParameter("ma_khach_hang"));
        Customer customer1 = new Customer(ma_khach_hang);
        int ma_nhan_vien = Integer.parseInt(req.getParameter("ma_nhan_vien"));
        Employee employee1 = new Employee(ma_nhan_vien);
        Order order = new Order(ngay_lam_order,so_luong_xe,product1,customer1,employee1);
        orderService.addOrder(order);
//        HttpSession session=req.getSession();
//        session.setAttribute("AddOrder","Them Thanh Cong");
        try {
            resp.sendRedirect("/order?message=Them Thanh Cong");
        }catch (IOException e){
            throw  new RuntimeException(e);
        }
    }
    private void deleteOrder(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int ma_hop_dong= Integer.parseInt(req.getParameter("isDelete"));
        orderService.deleteOrder(ma_hop_dong);
        resp.sendRedirect("/order?message=Xoa Thanh Cong");
    }

}

