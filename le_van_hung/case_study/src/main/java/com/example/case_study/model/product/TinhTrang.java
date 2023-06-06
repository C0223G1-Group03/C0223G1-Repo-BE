package com.example.case_study.model.product;

public class TinhTrang {
    private int ma_tinh_trang;
    private String ten_tinh_trang;

    public TinhTrang(String ten_tinh_trang) {
        this.ten_tinh_trang = ten_tinh_trang;
    }

    public TinhTrang(int ma_tinh_trang) {
        this.ma_tinh_trang = ma_tinh_trang;
    }

    public TinhTrang(int ma_tinh_trang, String ten_tinh_trang) {
        this.ma_tinh_trang = ma_tinh_trang;
        this.ten_tinh_trang = ten_tinh_trang;
    }

    public int getMa_tinh_trang() {
        return ma_tinh_trang;
    }

    public void setMa_tinh_trang(int ma_tinh_trang) {
        this.ma_tinh_trang = ma_tinh_trang;
    }

    public String getTen_tinh_trang() {
        return ten_tinh_trang;
    }

    public void setTen_tinh_trang(String ten_tinh_trang) {
        this.ten_tinh_trang = ten_tinh_trang;
    }
}
