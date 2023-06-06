package com.example.case_study.repo.user;

import com.example.case_study.model.user.User;
import com.example.case_study.repo.BaseRepo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepo implements IUserRepo {
    private String SELECT = "Select * from users";
    private String CREATE = "Insert into users(tai_khoan,mat_khau) values (?,?)";

    @Override
    public void create(User user) {
        Connection connection = BaseRepo.createConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(CREATE);
            preparedStatement.setString(1, user.getAccount());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean findUser(User user) {
        List<User> list = findAllUser();
        for (User u : list) {
            if (u.getAccount().equals(user.getAccount()) && u.getPassword().equals(user.getPassword())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public List<User> findAllUser() {
        List<User> list = new ArrayList<>();
        Connection connection = BaseRepo.createConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            preparedStatement.executeQuery();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String account = resultSet.getString("tai_khoan");
                String password = resultSet.getString("mat_khau");
                list.add(new User(id, account, password));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
}
