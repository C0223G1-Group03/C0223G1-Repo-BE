package com.example.case_study.repo.order;

import com.example.case_study.model.customer.Customer;
import com.example.case_study.model.employee.Employee;
import com.example.case_study.model.order.Order;
import com.example.case_study.model.product.LoaiXe;
import com.example.case_study.model.product.Product;
import com.example.case_study.model.product.TinhTrang;
import com.example.case_study.repo.product.BaseRepository;
import com.sun.org.apache.xpath.internal.operations.Or;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderRepository implements IOrderRepository {
    private static final String INSERT = "insert into orders(ngay_lam_order,so_luong_xe,ma_xe,ma_nhan_vien,ma_khach_hang)" +
            " values(?,?,?,?,?)";
    private static final String SELECT =
            "select o.ma_order,o.ngay_lam_order, o.so_luong_xe, o.ma_xe ,xe.ten_xe, xe.gia, o.ma_khach_hang,kh.ten_khach_hang\n" +
            "from orders o\n" +
            "left join xe on o.ma_xe = xe.ma_xe\n" +
            "left join khach_hang kh on o.ma_khach_hang = kh.ma_khach_hang;";

    private static final String DELETE = "delete from orders where ma_order = ?";

    private static final String ORDER_DETAIL =
            "select orders.*,khach_hang.ten_khach_hang,nhan_vien.ten_nhan_vien from orders\n" +
            "join khach_hang on orders.ma_khach_hang = khach_hang.ma_khach_hang\n" +
            "join nhan_vien on orders.ma_nhan_vien = nhan_vien.ma_nhan_vien\n" +
            "where orders.ma_order = ?";
    private static final String INSERT_BY_CUS_PRO ="INSERT INTO orders (`ma_xe`, `ma_nhan_vien`, `ma_khach_hang`) VALUES (?, 1, ?)";
    private static final String SELECT_INT = " select ma_khach_hang from khach_hang order by ma_khach_hang desc limit 1";
    @Override
    public List<Order> displayListOrder() {
        Connection connection = BaseRepository.getConnection();
        List<Order> orderList = new ArrayList<>();
        SimpleDateFormat s = new SimpleDateFormat();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()){
                int ma_order = resultSet.getInt("ma_order");
                Date date = resultSet.getDate("ngay_lam_order");
                String ngay_lam_order = s.format(date);
                int so_luong_xe = resultSet.getInt("so_luong_xe");
                int ma_xe = resultSet.getInt("ma_xe");
                String ten_xe = resultSet.getString("ten_xe");
                double gia = resultSet.getDouble("gia");
                int ma_khach_hang = resultSet.getInt("ma_khach_hang");
                String ten_khach_hang = resultSet.getString("ten_khach_hang");
//                int ma_nhan_vien = resultSet.getInt("ma_nhan_vien");
//                String ten_nhan_vien = resultSet.getString("ten_nhan_vien");
                Product product = new Product(ma_xe, ten_xe, gia);
                Customer customer = new Customer(ma_khach_hang, ten_khach_hang);
//                Employee employee = new Employee(ma_nhan_vien, ten_nhan_vien);
                Order order = new Order(ma_order, ngay_lam_order, so_luong_xe, product, customer);
                orderList.add(order);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return orderList;
    }

    @Override
    public void addOrder(Order order) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setDate(1, java.sql.Date.valueOf(order.getNgay_lam_order()));
            preparedStatement.setInt(2, order.getSo_luong_xe());
            preparedStatement.setInt(3, order.getProduct().getMa_xe());
            preparedStatement.setInt(4, order.getEmployee().getId());
            preparedStatement.setDouble(5, order.getCustomer().getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void deleteOrder(int ma_order) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1, ma_order);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

//    @Override
//    public List<Order> displayListOrderByType(int id) {
//        List<Order> orderList = new ArrayList<>();
//        Connection connection = BaseRepository.getConnection();
//        SimpleDateFormat s = new SimpleDateFormat();
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(ORDER_DETAIL);
//            preparedStatement.setInt(1,id);
//            preparedStatement.executeQuery();
//            ResultSet resultSet = preparedStatement.getResultSet();
//            while (resultSet.next()){
//                int ma_order = resultSet.getInt("ma_order");
//                Date date = resultSet.getDate("ngay_lam_order");
//                String ngay_lam_order = s.format(date);
//                int so_luong_xe = resultSet.getInt("so_luong_xe");
//                int ma_xe = resultSet.getInt("ma_xe");
//                String ten_xe = resultSet.getString("ten_xe");
//                int ma_nhan_vien = resultSet.getInt("ma_nhan_vien");
//                String ten_nhan_vien = resultSet.getString("ten_nhan_vien");
//                int ma_khach_hang = resultSet.getInt("ma_khach_hang");
//                String ten_khach_hang = resultSet.getString("ten_khach_hang");
//                Product product = new Product(ma_xe, ten_xe);
//                Customer customer = new Customer(ma_khach_hang, ten_khach_hang);
//                Employee employee = new Employee(ma_nhan_vien, ten_nhan_vien);
//                Order order = new Order(ma_order, ngay_lam_order, so_luong_xe, product, customer, employee);
//                orderList.add(order);
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        } finally {
//            try {
//                connection.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//        return orderList;
//    }

    @Override
    public Order findOrderById(int ma_order) {
        List<Order> orderList = displayListOrder();
        for (Order element: orderList){
            if(element.getMa_order() == ma_order){
                return element;
            }
        }
        return null;
    }

    @Override
    public void addOrderByCusPro(Order order) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement1 = connection.prepareStatement(SELECT_INT);
            ResultSet resultSet = preparedStatement1.executeQuery();
            int idCustomer=0;
            while (resultSet.next()){
          idCustomer = resultSet.getInt("ma_khach_hang");}
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BY_CUS_PRO);
            preparedStatement.setInt(1,order.getProduct().getMa_xe());
            preparedStatement.setInt(2,idCustomer);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
