package com.example.case_study.service.product;



import com.example.case_study.model.product.Product;

import java.util.List;

public interface IProductService {
    List<Product>displayList();
    void add(Product product);
    void delete(int ma_xe);
    void edit(Product product);
    List<Product> displayListByType(int maLoaiXe);
    Product findId(int ma_xe);
}
