package com.example.case_study.controller.product;



import com.example.case_study.model.product.LoaiXe;
import com.example.case_study.model.product.Product;
import com.example.case_study.model.product.TinhTrang;
import com.example.case_study.service.product.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name="ProductServlet", value ="/product")
public class ProductServlet extends HttpServlet {
    private ILoaiXeService loaiXeService = new LoaiXeService();
    private ITinhTrangService tinhTrangService = new TinhTrangService();
    private IProductService productService= new ProductService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String action=req.getParameter("action");
       if(action==null){
           action="";
       }
       switch (action){
           case "showFormAdd":
               showFormAdd(req,resp);
               break;
           case "showList":
               showList(req,resp);
               break;
           case "showFormEdit":
               showFormEdit(req,resp);
               break;
           default:
               showList(req,resp);
               break;
       }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "add":
                addProduct(req,resp);
                break;
            case "delete":
                delete(req,resp);
                break;
            case "edit":
                edit(req,resp);
                break;
            default:
                 displayMenu(req,resp);
                break;
        }
    }
    private void showFormEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<LoaiXe> loaiXeList = loaiXeService.display();
        List<TinhTrang> tinhTrangList = tinhTrangService.display();
        req.setAttribute("loaiXeList",loaiXeList);
        req.setAttribute("tinhTrangXe",tinhTrangList);
        RequestDispatcher requestDispatcher=req.getRequestDispatcher("view/product/edit.jsp");
        requestDispatcher.forward(req,resp);
    }
    private void edit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int ma_xe = Integer.parseInt(req.getParameter("id"));
        String ten_xe=req.getParameter("name");
        String mau_sac_xe=req.getParameter("color");
        String ngay_san_xuat=req.getParameter("date");
        String introduce=req.getParameter("introduce");
        int loai_xe =Integer.parseInt(req.getParameter("loaiXe"));
        LoaiXe loaiXe1 = new LoaiXe(loai_xe);
        int tinhTrang =Integer.parseInt(req.getParameter("tinhTrang"));
        double gia = Double.parseDouble(req.getParameter("gia"));
        TinhTrang tinhTrang1 = new TinhTrang(tinhTrang);
        Product product = new Product(ma_xe,ten_xe,mau_sac_xe,ngay_san_xuat,introduce,loaiXe1,tinhTrang1,gia);
        productService.edit(product);
        try {
            resp.sendRedirect("/product");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int ma_xe= Integer.parseInt(req.getParameter("idDelete"));
        productService.delete(ma_xe);
        resp.sendRedirect("/product");
    }

    private void displayMenu(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher requestDispatcher= req.getRequestDispatcher("view/main_menu/giao_dien.jsp");
        try {
            requestDispatcher.forward(req,resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void addProduct(HttpServletRequest req, HttpServletResponse resp) {
        String name=req.getParameter("name");
        String color=req.getParameter("color");
        String date=req.getParameter("day");
        String introduce=req.getParameter("introduce");
        int loai_xe =Integer.parseInt(req.getParameter("loai_xe"));
        LoaiXe loaiXe1 = new LoaiXe(loai_xe);
        int tinhTrang =Integer.parseInt(req.getParameter("tinh_trang"));
        TinhTrang tinhTrang1 = new TinhTrang(tinhTrang);
        Product product = new Product(name,color,date,introduce,loaiXe1,tinhTrang1);
        productService.add(product);
        try {
            resp.sendRedirect("/product");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void showFormAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<LoaiXe> loaiXeList = loaiXeService.display();
        List<TinhTrang> tinhTrangList = tinhTrangService.display();
        req.setAttribute("loaiXeList",loaiXeList);
        req.setAttribute("tinhTrangXe",tinhTrangList);
        RequestDispatcher requestDispatcher=req.getRequestDispatcher("view/product/add.jsp");
        requestDispatcher.forward(req,resp);
    }

    private void showList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> list=productService.displayList();
        req.setAttribute("list",list);
        RequestDispatcher requestDispatcher= req.getRequestDispatcher("/view/product/list.jsp");
        requestDispatcher.forward(req,resp);
    }
}