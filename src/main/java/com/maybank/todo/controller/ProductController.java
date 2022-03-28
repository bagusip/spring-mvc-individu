package com.maybank.todo.controller;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	@RequestMapping("/addproduct")
	public String addProducts(Model model) {
//		return service.saveProduct(product);
		model.addAttribute("product", new Product());
		return "product/addForm";
	}

	@RequestMapping("save")
	public String save(@ModelAttribute Product product) {
		System.out.println("Form Data: " + product);
		service.saveProduct(product);
		return "redirect:list-all";
	}

	@PostMapping("/addproducts")
	public List<Product> addProducts(@RequestBody List<Product> products) {
		return service.saveProduct(products);
	}

	@GetMapping("/products")
	public List<Product> findAllProducts() {
		return service.getProducts();
	}

	@GetMapping("/edit/{id}")
	public String findProductById(Model model, @PathVariable int id) {
		Product product = service.getProductsById(id);
		System.out.println("Edit Data: " + product);
		model.addAttribute("product", product);
//		return service.getProductsById(id);
		return "product/editForm";
	}

	@GetMapping("/products/{name}")
	public Product findProductByName(@PathVariable String name) {
		return service.getProductsByName(name);
	}

	@RequestMapping("updateproduct")
	public String updateProduct(@ModelAttribute Product product) {
		service.updateProduct(product);
		return "redirect:/product/list-all";
	}

	@RequestMapping("/delete/{id}")
	public String deleteProduct(@PathVariable int id) {
		System.out.println(id);
		service.deleteProduct(id);
		return "redirect:/product/list-all";
	}
}
