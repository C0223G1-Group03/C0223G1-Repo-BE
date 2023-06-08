package com.example.case_study.repo.customer;

import com.example.case_study.model.customer.Customer;
import com.example.case_study.repo.product.BaseRepository;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepo implements ICustomerRepo {
    private static final String DISPLAY_ALL = "select * from khach_hang";
    private static final String CREATE = "INSERT INTO khach_hang ( ten_khach_hang, dia_chi, ngay_sinh, gioi_tinh, sdt, email, cccd) VALUES ( ?, ?, ?,?, ?, ?, ?)";
    private static final String DELETE = "delete from khach_hang where ma_khach_hang=?";
    private static final String UPDATE = "UPDATE khach_hang SET ten_khach_hang = ?, dia_chi = ?, ngay_sinh = ?, gioi_tinh = ?, sdt = ?, email =?, cccd = ? WHERE (ma_khach_hang = ?);";

    @Override
    public List<Customer> displayList() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(DISPLAY_ALL);
            while (resultSet.next()) {
                int id=resultSet.getInt("ma_khach_hang");
                String name = resultSet.getString("ten_khach_hang");
                String address = resultSet.getString("dia_chi");
                String dateOfBirth = resultSet.getString("ngay_sinh");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String phone = resultSet.getString("sdt");
                String email = resultSet.getString("email");
                String citizenId = resultSet.getString("cccd");
                customerList.add(new Customer(id,name, address, dateOfBirth, gender, phone, email, citizenId));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void add(Customer customer) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(CREATE);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getAddress());
            preparedStatement.setString(3, customer.getDateOfBirth());
            preparedStatement.setBoolean(4, customer.isGender());
            preparedStatement.setString(5, customer.getPhone());
            preparedStatement.setString(6, customer.getEmail());
            preparedStatement.setString(7, customer.getCitizenId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean delete(int id) {
        Connection connection= BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }

    @Override
    public void update(Customer customer) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getAddress());
            preparedStatement.setString(3, customer.getDateOfBirth());
            preparedStatement.setBoolean(4, customer.isGender());
            preparedStatement.setString(5, customer.getPhone());
            preparedStatement.setString(6, customer.getEmail());
            preparedStatement.setString(7, customer.getCitizenId());
            preparedStatement.setInt(8, customer.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Customer search(int id) {
        List<Customer> customerList=displayList();
        for (Customer c: customerList) {
            if(c.getId()==id){
                return c;
            }
        }
        return null;
    }
}
