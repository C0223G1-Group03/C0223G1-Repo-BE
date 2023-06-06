package com.example.case_study.repo.product;



import com.example.case_study.model.product.LoaiXe;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoaiXeRepo implements ILoaiXeRepo {
    @Override
    public List<LoaiXe> display() {
        List<LoaiXe> list = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("Select * from loai_xe");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int ma_loai_xe = resultSet.getInt("ma_loai_xe");
                String ten_loai_xe = resultSet.getString("ten_loai_xe");
                LoaiXe loaiXe = new LoaiXe(ma_loai_xe, ten_loai_xe);
                list.add(loaiXe);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}
