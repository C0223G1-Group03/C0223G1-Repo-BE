package com.example.case_study.repo.product;



import com.example.case_study.model.product.Product;

import java.util.List;

public interface IProductRepository {
    List<Product>displayList();
    void add(Product product);
    void delete(int ma_xe);
    void edit(Product product);
    List<Product> displayListByType(int id);
    Product findId(int ma_xe);
    Product findByName(int ten_xe);
}
