package com.example.case_study.repo.product;



import com.example.case_study.model.product.TinhTrang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TinhTrangRepo implements ITinhTrangRepo{

    @Override
    public List<TinhTrang> display() {
        List<TinhTrang>list=new ArrayList<>();
        Connection connection=BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement("select *from tinh_trang");
            ResultSet resultSet= preparedStatement.executeQuery();
            while (resultSet.next()){
                int ma_tinh_trang=resultSet.getInt("ma_tinh_trang");
                String ten_tinh_trang=resultSet.getString("ten_tinh_trang");
                TinhTrang tinhTrang= new TinhTrang(ma_tinh_trang,ten_tinh_trang);
                list.add(tinhTrang);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}
