package com.maybank.todo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.maybank.todo.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer>{

	Product findByName(String name);
	

}
