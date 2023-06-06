package com.example.case_study.model.product;

public class LoaiXe {
    private  int ma_loai_xe;
    private String ten_loai_xe;

    public LoaiXe(int ma_loai_xe, String ten_loai_xe) {
        this.ma_loai_xe = ma_loai_xe;
        this.ten_loai_xe = ten_loai_xe;
    }

    public LoaiXe(int ma_loai_xe) {
        this.ma_loai_xe = ma_loai_xe;
    }

    public LoaiXe(String ten_loai_xe) {
        this.ten_loai_xe = ten_loai_xe;
    }

    public int getMa_loai_xe() {
        return ma_loai_xe;
    }

    public void setMa_loai_xe(int ma_loai_xe) {
        this.ma_loai_xe = ma_loai_xe;
    }

    public String getTen_loai_xe() {
        return ten_loai_xe;
    }

    public void setTen_loai_xe(String ten_loai_xe) {
        this.ten_loai_xe = ten_loai_xe;
    }
}
