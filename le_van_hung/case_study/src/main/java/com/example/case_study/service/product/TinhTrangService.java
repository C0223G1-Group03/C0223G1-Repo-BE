package com.example.case_study.service.product;


import com.example.case_study.model.product.TinhTrang;
import com.example.case_study.repo.product.ITinhTrangRepo;
import com.example.case_study.repo.product.TinhTrangRepo;

import java.util.List;

public class TinhTrangService implements  ITinhTrangService {
 private ITinhTrangRepo tinhTrangRepo= new TinhTrangRepo();

    @Override
    public List<TinhTrang> display() {
        return tinhTrangRepo.display();
    }
}
