package com.maybank.todo.controller;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.maybank.todo.entity.Product;
import com.maybank.todo.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private ProductService service;
	
	@GetMapping("/list-all")
    public String listAll(Model model) {
        model.addAttribute("products", service.getProducts());
        System.out.println(service.getProducts());
        return "product/listAll";
    }
	
	@PostMapping("/addproduct")
	public Product addProducts(@RequestBody Product product) {
		return service.saveProduct(product);
	}
	
	
	@PostMapping("/addproducts")
	public List<Product> addProducts(@RequestBody List<Product> products) {
		return service.saveProduct(products);
	}
	
	@GetMapping("/products")
	public List<Product> findAllProducts(){
		return service.getProducts();
	}
	
	@GetMapping("/product/{id}")
	public Product findProductById(@PathVariable int id) {
		return service.getProductsById(id);
	}
	
	@GetMapping("/products/{name}")
	public Product findProductByName(@PathVariable String name) {
		return service.getProductsByName(name);
	}
	
	@PutMapping("/updateproduct")
	public Product updateProduct(@RequestBody Product product) {
		return service.updateProduct(product);
	}
	
	@DeleteMapping("/delete/{id}")
	public String deleteProduct(@PathVariable int id) {
		return service.deleteProduct(id);
	}
	
	
}
