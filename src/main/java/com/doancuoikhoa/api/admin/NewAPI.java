package com.doancuoikhoa.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.doancuoikhoa.dto.ProductDto;
import com.doancuoikhoa.service.impl.ProductService;

@RestController(value = "newAPIOfAdmin")
public class NewAPI {

	@Autowired
	private ProductService productService;

	@PostMapping("/api/product")
	public ProductDto createProduct(@RequestBody ProductDto InsertProduct) {
		return productService.save(InsertProduct);
	}

	@PutMapping("/api/product")
	public ProductDto updateProduct(@RequestBody ProductDto updateProduct) {
		return productService.save(updateProduct);
	}
}
