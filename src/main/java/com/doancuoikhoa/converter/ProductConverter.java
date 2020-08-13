package com.doancuoikhoa.converter;

import org.springframework.stereotype.Component;

import com.doancuoikhoa.dto.ProductDto;
import com.doancuoikhoa.entity.ProductEntity;

@Component
public class ProductConverter {
	public ProductDto toDto(ProductEntity productEntity) {
		ProductDto result = new ProductDto();
		result.setId(productEntity.getId());
		result.setName(productEntity.getName());
		result.setPrice(productEntity.getPrice());
		result.setDescription(productEntity.getDescription());
		result.setFile(productEntity.getFile());		
		result.setCategoryId(productEntity.getCategoryEntity().getId());
		result.setCategoryName(productEntity.getCategoryEntity().getName());
		result.setCreatedDate(productEntity.getCreatedDate());
		result.setModifiedDate(productEntity.getModifiedDate());
		result.setCategoryTags(productEntity.getCategoryEntity().getTags());
		return result;
	}

	public ProductEntity toEntity(ProductDto productDto) {
		ProductEntity result = new ProductEntity();
		result.setName(productDto.getName());
		result.setPrice(productDto.getPrice());
		result.setFile(productDto.getFile());		
		result.setDescription(productDto.getDescription());
		result.setFile(productDto.getFile());
		return result;
	}

	public ProductEntity toEntity(ProductEntity result, ProductDto productDto) {
		result.setName(productDto.getName());
		result.setPrice(productDto.getPrice());
		result.setFile(productDto.getFile());
		result.setDescription(productDto.getDescription());	
		result.setFile(productDto.getFile());
		return result;
	}
}
