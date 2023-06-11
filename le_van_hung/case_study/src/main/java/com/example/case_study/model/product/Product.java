package com.example.case_study.model.product;

public class Product {
    private int ma_xe;
    private String ten_xe;
    private String mau_sac_xe;
    private String ngay_san_xuat;
    private String mo_ta;
    private LoaiXe loaiXe;
    private TinhTrang tinhTrang;
    private double gia;
    private String image;

    public Product(String name, String color, String date, String introduce, LoaiXe loaiXe1, TinhTrang tinhTrang1, String img) {
    }

    public Product(int ma_xe, String ten_xe, String mau_sac_xe, String ngay_san_xuat, String mo_ta, LoaiXe loaiXe, TinhTrang tinhTrang, double gia) {
        this.ma_xe = ma_xe;
        this.ten_xe = ten_xe;
        this.mau_sac_xe = mau_sac_xe;
        this.ngay_san_xuat = ngay_san_xuat;
        this.mo_ta = mo_ta;
        this.loaiXe = loaiXe;
        this.tinhTrang = tinhTrang;
        this.gia = gia;
    }

    public Product(int ma_xe, String ten_xe, String mau_sac_xe, String ngay_san_xuat, String mo_ta, LoaiXe loaiXe, TinhTrang tinhTrang, double gia, String image) {
        this.ma_xe = ma_xe;
        this.ten_xe = ten_xe;
        this.mau_sac_xe = mau_sac_xe;
        this.ngay_san_xuat = ngay_san_xuat;
        this.mo_ta = mo_ta;
        this.loaiXe = loaiXe;
        this.tinhTrang = tinhTrang;
        this.gia = gia;
        this.image = image;
    }

    public Product(String ten_xe, String mau_sac_xe, String ngay_san_xuat, String mo_ta, LoaiXe loaiXe, TinhTrang tinhTrang,double gia, String image) {
        this.ten_xe = ten_xe;
        this.mau_sac_xe = mau_sac_xe;
        this.ngay_san_xuat = ngay_san_xuat;
        this.mo_ta = mo_ta;
        this.loaiXe = loaiXe;
        this.tinhTrang = tinhTrang;
        this.gia = gia;
        this.image = image;
    }

    public Product(int ma_xe, String ten_xe, String mau_sac_xe, String ngay_san_xuat, String mo_ta, LoaiXe loaiXe, TinhTrang tinhTrang) {
        this.ma_xe = ma_xe;
        this.ten_xe = ten_xe;
        this.mau_sac_xe = mau_sac_xe;
        this.ngay_san_xuat = ngay_san_xuat;
        this.mo_ta = mo_ta;
        this.loaiXe = loaiXe;
        this.tinhTrang = tinhTrang;
    }

    public Product(int ma_xe, String ten_xe, String mau_sac_xe, String ngay_san_xuat, String mo_ta, LoaiXe loaiXe, TinhTrang tinhTrang, String image) {
        this.ma_xe = ma_xe;
        this.ten_xe = ten_xe;
        this.mau_sac_xe = mau_sac_xe;
        this.ngay_san_xuat = ngay_san_xuat;
        this.mo_ta = mo_ta;
        this.loaiXe = loaiXe;
        this.tinhTrang = tinhTrang;

    }

    public Product(int ma_xe, String ten_xe) {
        this.ma_xe = ma_xe;
        this.ten_xe = ten_xe;
    }

    public Product(int ma_xe, String ten_xe, double gia) {
        this.ma_xe = ma_xe;
        this.ten_xe = ten_xe;
        this.gia = gia;
    }

    public Product(int ma_xe) {
        this.ma_xe = ma_xe;
    }

    public int getMa_xe() {
        return ma_xe;
    }

    public void setMa_xe(int ma_xe) {
        this.ma_xe = ma_xe;
    }

    public String getTen_xe() {
        return ten_xe;
    }

    public void setTen_xe(String ten_xe) {
        this.ten_xe = ten_xe;
    }

    public String getMau_sac_xe() {
        return mau_sac_xe;
    }

    public void setMau_sac_xe(String mau_sac_xe) {
        this.mau_sac_xe = mau_sac_xe;
    }

    public String getNgay_san_xuat() {
        return ngay_san_xuat;
    }

    public void setNgay_san_xuat(String ngay_san_xuat) {
        this.ngay_san_xuat = ngay_san_xuat;
    }

    public String getMo_ta() {
        return mo_ta;
    }

    public void setMo_ta(String mo_ta) {
        this.mo_ta = mo_ta;
    }

    public LoaiXe getLoaiXe() {
        return loaiXe;
    }

    public void setLoaiXe(LoaiXe loaiXe) {
        this.loaiXe = loaiXe;
    }

    public TinhTrang getTinhTrang() {
        return tinhTrang;
    }

    public void setTinhTrang(TinhTrang tinhTrang) {
        this.tinhTrang = tinhTrang;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    @Override
    public String toString() {
        return "Product{" +
                "ma_xe=" + ma_xe +
                ", ten_xe='" + ten_xe + '\'' +
                ", mau_sac_xe='" + mau_sac_xe + '\'' +
                ", ngay_san_xuat='" + ngay_san_xuat + '\'' +
                ", mo_ta='" + mo_ta + '\'' +
                ", loaiXe=" + loaiXe +
                ", tinhTrang=" + tinhTrang +
                '}';
    }
}


