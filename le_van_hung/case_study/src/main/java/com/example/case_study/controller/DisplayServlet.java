package com.example.case_study.controller;

import com.example.case_study.model.product.Product;
import com.example.case_study.service.product.IProductService;
import com.example.case_study.service.product.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DisplayServlet", value = "/display")
public class DisplayServlet extends HttpServlet {
    private IProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action==null){
            action= "";
        }
        switch (action){
            case "user":
                response.sendRedirect("/user");
                break;
            case "display":
                typeOfDisplay(request,response);
                break;
            case "detail":
                showDetail(request, response);
                break;
            default:
                response.sendRedirect("view/main_menu/giao_dien.jsp");
        }
    }

    private void showDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findId(id);
        request.setAttribute("product",product);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/product/chi_tiet.jsp");
        requestDispatcher.forward(request, response);
    }

    private void typeOfDisplay(HttpServletRequest request, HttpServletResponse response) {
        String type = request.getParameter("type");
        if (type==null){
            type = "";
        }
        List<Product> productList = new ArrayList<>();
        RequestDispatcher requestDispatcher;
        int maLoaiXe;
        if(type.equals("")){
            productList = productService.displayList();
            request.setAttribute("productList",productList);
            requestDispatcher = request.getRequestDispatcher("/view/main_menu/show_product_list.jsp");
            try {
                requestDispatcher.forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }else {
            maLoaiXe = Integer.parseInt(type);
            productList = productService.displayListByType(maLoaiXe);
            request.setAttribute("productList",productList);
            requestDispatcher = request.getRequestDispatcher("/view/main_menu/show_product_list.jsp");
            try {
                requestDispatcher.forward(request,response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
