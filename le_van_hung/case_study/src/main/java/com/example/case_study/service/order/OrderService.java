package com.example.case_study.service.order;

import com.example.case_study.model.order.Order;
import com.example.case_study.repo.order.IOrderRepository;
import com.example.case_study.repo.order.OrderRepository;

import java.util.List;

public class OrderService implements IOrderService{
    private IOrderRepository orderRepository = new OrderRepository();
    @Override
    public List<Order> displayListOrder() {
        return orderRepository.displayListOrder();
    }

    @Override
    public void addOrder(Order order) {
        orderRepository.addOrder(order);
    }

    @Override
    public void deleteOrder(int ma_order) {
        orderRepository.deleteOrder(ma_order);
    }

//    @Override
//    public List<Order> displayListOrderByType(int id) {
//        return orderRepository.displayListOrderByType(id);
//    }

    @Override
    public Order findOrderById(int ma_order) {
        return orderRepository.findOrderById(ma_order);
    }

    @Override
    public void addOrderByCusPro(Order order) {
        orderRepository.addOrderByCusPro(order);
    }
}
