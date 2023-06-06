package com.example.case_study.service.product;


import com.example.case_study.model.product.Product;
import com.example.case_study.repo.product.IProductRepository;
import com.example.case_study.repo.product.ProductRepository;

import java.util.List;

public class ProductService implements IProductService{
    private IProductRepository productRepository=new ProductRepository();

    @Override
    public List<Product> displayList() {
        return productRepository.displayList();
    }

    @Override
    public void add(Product product) {
        productRepository.add(product);
    }

    @Override
    public void delete(int ma_xe) {
        productRepository.delete(ma_xe);
    }

    @Override
    public void edit(Product product) {
        productRepository.edit(product);
    }

    @Override
    public List<Product> displayListByType(int maLoaiXe) {
        return productRepository.displayListByType(maLoaiXe);
    }

    @Override
    public Product findId(int ma_xe) {
        return productRepository.findId(ma_xe);
    }


}
