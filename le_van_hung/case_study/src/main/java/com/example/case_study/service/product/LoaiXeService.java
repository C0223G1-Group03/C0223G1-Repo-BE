package com.example.case_study.service.product;


import com.example.case_study.model.product.LoaiXe;
import com.example.case_study.repo.product.ILoaiXeRepo;
import com.example.case_study.repo.product.LoaiXeRepo;

import java.util.List;

public class LoaiXeService implements ILoaiXeService {
    private ILoaiXeRepo loaiXeRepo=new LoaiXeRepo();
    @Override
    public List<LoaiXe> display() {
        return loaiXeRepo.display();
    }
}
