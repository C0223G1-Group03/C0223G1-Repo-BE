package com.example.case_study.repo.employee;


import com.example.case_study.model.employee.Employee;
import com.example.case_study.repo.product.BaseRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepo implements IEmployeeRepo {
    private static final String DISPLAY_ALL = "SELECT * FROM nhan_vien";
    private static final String CREATE = "INSERT INTO nhan_vien (ten_nhan_vien, dia_chi, ngay_sinh, gioi_tinh, sdt, email, cccd,tai_khoan,mat_khau) VALUES (?,?, ?, ?, ?,?, ?, ?,?)";
    private static final String DELETE = "delete from nhan_vien where ma_nhan_vien=?";
    private static final String UPDATE = "UPDATE nhan_vien SET ten_nhan_vien = ?, dia_chi = ?, ngay_sinh = ?, gioi_tinh = ?, sdt = ?, email =?,cccd = ?,tai_khoan=?,mat_khau=? WHERE (ma_nhan_vien = ?)";

    @Override
    public List<Employee> displayList() {
        List<Employee> employeeList=new ArrayList<>();
        Connection connection= BaseRepository.getConnection();
        try {
            Statement statement=connection.createStatement();
            ResultSet resultSet=statement.executeQuery(DISPLAY_ALL);
            while(resultSet.next()){
                 int id=resultSet.getInt("ma_nhan_vien");
                 String name= resultSet.getString("ten_nhan_vien");
                 String address= resultSet.getString("dia_chi");
                 String dateOfBirth= resultSet.getString("ngay_sinh");
                 boolean gender= resultSet.getBoolean("gioi_tinh");
                 String phone= resultSet.getString("sdt");
                 String email= resultSet.getString("email");
                 String citizenId= resultSet.getString("cccd");
                String userName= resultSet.getString("tai_khoan");
                String password=resultSet.getString("mat_khau");
                 employeeList.add(new Employee(id,name,address,dateOfBirth,gender,phone,email,citizenId,userName,password));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employeeList;
    }

    @Override
    public void add(Employee employee) {
    Connection connection=BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(CREATE);
            preparedStatement.setString(1,employee.getName());
            preparedStatement.setString(2,employee.getAddress());
            preparedStatement.setString(3, employee.getDateOfBirth());
            preparedStatement.setBoolean(4,employee.isGender());
            preparedStatement.setString(5, employee.getPhone());
            preparedStatement.setString(6, employee.getEmail());
            preparedStatement.setString(7, employee.getCitizenId());
            preparedStatement.setString(8, employee.getAccount());
            preparedStatement.setString(9, employee.getPassword());
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
    public void update(Employee employee) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setString(2, employee.getAddress());
            preparedStatement.setString(3, employee.getDateOfBirth());
            preparedStatement.setBoolean(4, employee.isGender());
            preparedStatement.setString(5, employee.getPhone());
            preparedStatement.setString(6, employee.getEmail());
            preparedStatement.setString(7, employee.getCitizenId());
            preparedStatement.setString(8,employee.getAccount());
            preparedStatement.setString(9,employee.getPassword());
            preparedStatement.setInt(10, employee.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Employee search(int id) {
        List<Employee> employeeList=displayList();
        for (Employee c: employeeList) {
            if(c.getId()==id){
                return c;
            }
        }

        return null;
    }

    @Override
    public boolean findEmployee(Employee employee) {
        List<Employee> employeeList=displayList();
        for (Employee e: employeeList){
            if(e.getAccount().equals(employee.getAccount()) && e.getPassword().equals(employee.getPassword())){
                return true;
            }
        }
        return false;
    }

}
