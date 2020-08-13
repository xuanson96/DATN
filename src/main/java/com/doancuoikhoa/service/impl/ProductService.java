package com.doancuoikhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doancuoikhoa.converter.ProductConverter;
import com.doancuoikhoa.dto.ProductDto;
import com.doancuoikhoa.entity.CategoryEntity;
import com.doancuoikhoa.entity.ProductEntity;
import com.doancuoikhoa.repository.ICategoryRepository;
import com.doancuoikhoa.repository.IProductRepository;

@Service
@Transactional
public class ProductService {

	@Autowired
	private IProductRepository productRepository;

	@Autowired
	private ICategoryRepository categoryRepository;

	@Autowired
	private ProductConverter productConverter;
		

	public ProductService() {
		super();
	}
	
	@Transactional
	public ProductDto save(ProductDto productDto) {
		CategoryEntity category = categoryRepository.findOneByName(productDto.getCategoryName());
		ProductEntity productEntity = new ProductEntity();
		if (productDto.getId() != null) {
			ProductEntity oldProduct = productRepository.findOne(productDto.getId());
			oldProduct.setCategoryEntity(category);
			productEntity = productConverter.toEntity(oldProduct, productDto);			
		} else {
			productEntity = productConverter.toEntity(productDto);
			productEntity.setCategoryEntity(category);
		}
		return productConverter.toDto(productRepository.save(productEntity));
	}

	public List<ProductDto> listAll(Pageable pageable) {
		List<ProductDto> models = new ArrayList<ProductDto>();
		List<ProductEntity> productEntity = (List<ProductEntity>) productRepository.findAll(pageable).getContent();
		for (ProductEntity items : productEntity) {
			ProductDto product = productConverter.toDto(items);
			models.add(product);
		}
		return models;
	}

	public List<ProductDto> listAllProduct() {
		List<ProductDto> models = new ArrayList<ProductDto>();
		List<ProductEntity> productEntity = (List<ProductEntity>) productRepository.findAll();
		for (ProductEntity items : productEntity) {
			ProductDto product = productConverter.toDto(items);
			models.add(product);
		}
		return models;
	}

	public ProductDto findById(Long id) {
		ProductEntity productEntity = productRepository.findOne(id);
		return productConverter.toDto(productEntity);
	}

	public void delete(Long id) {
		productRepository.delete(id);
	}

	public int getTotalItem() {
		return (int) productRepository.count();
	}

	public List<ProductDto> search(String keyword) {
		List<ProductDto> result = new ArrayList<ProductDto>();
		List<ProductEntity> productEntity = productRepository.search(keyword);
		for (ProductEntity items : productEntity) {
			ProductDto productDto = productConverter.toDto(items);
			result.add(productDto);
		}
		return result;
	}
	

}
