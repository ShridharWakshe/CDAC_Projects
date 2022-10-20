package com.artgallery.dao;

import java.util.List;

import com.artgallery.models.Product;

public interface ProductDao {
	
	public Product getProduct(int pid);
	public List<Product> getAllProducts();

}
