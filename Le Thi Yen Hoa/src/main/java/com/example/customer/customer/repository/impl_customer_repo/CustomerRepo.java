package com.example.customer.customer.repository.impl_customer_repo;

import com.example.customer.customer.model.Customer;
import com.example.customer.customer.repository.BaseRepository;
import com.example.customer.customer.repository.ICustomerRepo;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepo implements ICustomerRepo {
    private static final String DISPLAY_ALL = "select * from customer";
    private static final String CREATE = "INSERT INTO `demo1`.`customer` (`id`, `name`, `address`, `dateOfBirth`, `gender`, `phone`, `email`, `citizen_id`) VALUES (?, ?, ?, ?,?, ?, ?, ?)";
    private static final String DELETE = "delete from customer where id=?";
    private static final String UPDATE = "UPDATE `demo1`.`customer` SET `name` = ?, `address` = ?, `dateOfBirth` = ?, `gender` = ?, `phone` = ?, `email` =?, `citizen_id` = ? WHERE (`id` = ?);";

    @Override
    public List<Customer> displayList() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(DISPLAY_ALL);
            while (resultSet.next()) {
                int id=resultSet.getInt("id");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String dateOfBirth = resultSet.getString("dateOfBirth");
                boolean gender = resultSet.getBoolean("gender");
                String phone = resultSet.getString("phone");
                String email = resultSet.getString("email");
                String citizenId = resultSet.getString("citizen_id");
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
            preparedStatement.setInt(1,customer.getId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getAddress());
            preparedStatement.setString(4, customer.getDateOfBirth());
            preparedStatement.setBoolean(5, customer.isGender());
            preparedStatement.setString(6, customer.getPhone());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getCitizenId());

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
