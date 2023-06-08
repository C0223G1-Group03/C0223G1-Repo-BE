package com.example.case_study.service.order;

import com.example.case_study.model.order.Order;

import java.util.List;

public interface IOrderService {
    List<Order> displayListOrder();
    void addOrder(Order order);
    void deleteOrder(int ma_order);
//    List<Order> displayListOrderByType(int id);
    Order findOrderById(int ma_order);
    void addOrderByCusPro(Order order);
}
