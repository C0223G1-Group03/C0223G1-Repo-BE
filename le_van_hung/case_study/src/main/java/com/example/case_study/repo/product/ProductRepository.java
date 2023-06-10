package com.example.case_study.repo.product;

import com.example.case_study.model.product.LoaiXe;
import com.example.case_study.model.product.Product;
import com.example.case_study.model.product.TinhTrang;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

public class ProductRepository implements IProductRepository {
    private static  final  String FINDBYNAME="select xe.ten_xe from xe where xe.ten_xe like'%Mercedes%'";
    private static final String INSERT = "insert into xe(ten_xe,mau_sac_xe,ngay_san_xuat,mo_ta,ma_loai_xe,ma_tinh_trang,gia,image)" +
            " values(?,?,?,?,?,?,?,?)";
    private static final String SELECT = " select xe.*,tinh_trang.ten_tinh_trang,loai_xe.ten_loai_xe from xe \n" +
            "  join loai_xe on xe.ma_loai_xe = loai_xe.ma_loai_xe\n" +
            "  join tinh_trang on xe.ma_tinh_trang=tinh_trang.ma_tinh_trang\n";
    private static final String DELETE = "delete from xe where ma_xe = ?";

    private static final String EDIT = "update xe set ten_xe = ?,mau_sac_xe= ?, ngay_san_xuat =?,mo_ta=?,ma_loai_xe=?,ma_tinh_trang=?, gia=?,image=? where ma_xe = ?";

    private static final String SELECTBYTYPE = "select xe.*,tinh_trang.ten_tinh_trang,loai_xe.ten_loai_xe from xe\n" +
            "join loai_xe on xe.ma_loai_xe = loai_xe.ma_loai_xe\n" +
            "join tinh_trang on xe.ma_tinh_trang=tinh_trang.ma_tinh_trang\n" +
            "where xe.ma_loai_xe = ?";
    @Override
    public List<Product> displayList() {
        Connection connection = BaseRepository.getConnection();
        List<Product> products = new ArrayList<>();
        SimpleDateFormat s = new SimpleDateFormat();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                int ma_xe = resultSet.getInt("ma_xe");
                String ten_xe = resultSet.getString("ten_xe");
                String mau_sac_xe = resultSet.getString("mau_sac_xe");
                Date date = resultSet.getDate("ngay_san_xuat");
                String ngay_san_xuat = s.format(date);
                String mo_ta = resultSet.getString("mo_ta");
                int ma_tinh_trang = resultSet.getInt("ma_tinh_trang");
                String ten_tinh_tang = resultSet.getString("ten_tinh_trang");
                int ma_loai_xe = resultSet.getInt("ma_loai_xe");
                String ten_loai_xe = resultSet.getString("ten_loai_xe");
                TinhTrang tinhTrang = new TinhTrang(ma_tinh_trang, ten_tinh_tang);
                LoaiXe loaiXe = new LoaiXe(ma_loai_xe, ten_loai_xe);
                double gia = resultSet.getDouble("gia");
                String image = resultSet.getString("image");
                Product product = new Product(ma_xe, ten_xe, mau_sac_xe, ngay_san_xuat, mo_ta, loaiXe, tinhTrang,gia,image);
                products.add(product);
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
        return products;
    }

    @Override
    public void add(Product product) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, product.getTen_xe());
            preparedStatement.setString(2, product.getMau_sac_xe());
            preparedStatement.setDate(3, Date.valueOf(product.getNgay_san_xuat()));
            preparedStatement.setString(4, product.getMo_ta());
            preparedStatement.setInt(5, product.getLoaiXe().getMa_loai_xe());
            preparedStatement.setInt(6, product.getTinhTrang().getMa_tinh_trang());
            preparedStatement.setDouble(7, product.getGia());
            preparedStatement.setString(8, product.getImage());
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
    public void delete(int ma_xe) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1, ma_xe);
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

    @Override
    public void edit(Product product) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT);
            preparedStatement.setString(1, product.getTen_xe());
            preparedStatement.setString(2, product.getMau_sac_xe());
            preparedStatement.setDate(3, Date.valueOf(product.getNgay_san_xuat()));
            preparedStatement.setString(4, product.getMo_ta());
            preparedStatement.setInt(5, product.getLoaiXe().getMa_loai_xe());
            preparedStatement.setInt(6, product.getTinhTrang().getMa_tinh_trang());
            preparedStatement.setDouble(7, product.getGia());
            preparedStatement.setString(8, product.getImage());
            preparedStatement.setInt(9, product.getMa_xe());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override
    public List<Product> displayListByType(int id) {
        List<Product> list = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        SimpleDateFormat s = new SimpleDateFormat();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECTBYTYPE);
            preparedStatement.setInt(1,id);
            preparedStatement.executeQuery();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()){
                int ma_xe = resultSet.getInt("ma_xe");
                String ten_xe = resultSet.getString("ten_xe");
                String mau_sac_xe = resultSet.getString("mau_sac_xe");
                Date date = resultSet.getDate("ngay_san_xuat");
                String ngay_san_xuat = s.format(date);
                String mo_ta = resultSet.getString("mo_ta");
                int ma_tinh_trang = resultSet.getInt("ma_tinh_trang");
                String ten_tinh_tang = resultSet.getString("ten_tinh_trang");
                int ma_loai_xe = resultSet.getInt("ma_loai_xe");
                String ten_loai_xe = resultSet.getString("ten_loai_xe");
                TinhTrang tinhTrang = new TinhTrang(ma_tinh_trang, ten_tinh_tang);
                LoaiXe loaiXe = new LoaiXe(ma_loai_xe, ten_loai_xe);
                double gia = resultSet.getDouble("gia");
                String image = resultSet.getString("image");
                Product product = new Product(ma_xe, ten_xe, mau_sac_xe, ngay_san_xuat, mo_ta, loaiXe, tinhTrang,gia,image);
                list.add(product);
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
        return list;
    }

    @Override
    public Product findId(int ma_xe) {
        List<Product> list=displayList();
        for (Product p: list){
            if(p.getMa_xe()==ma_xe){
                return p;
            }
        }
        return null;
    }

    @Override
    public Product findByName(int ten_xe) {
        List<Product>list=displayList();
        Connection connection=BaseRepository.getConnection();

        return null;
    }
}
