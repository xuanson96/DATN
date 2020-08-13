package com.doancuoikhoa.converter;

import org.springframework.stereotype.Component;

import com.doancuoikhoa.dto.CategoryDto;
import com.doancuoikhoa.entity.CategoryEntity;

@Component
public class CategoryConverter {
	public CategoryDto toDto(CategoryEntity category) {
		CategoryDto result = new CategoryDto();
		result.setName(category.getName());
		result.setTags(category.getTags());
		result.setId(category.getId());
		return result;
	}
	public CategoryEntity toEntity(CategoryDto categoryDto) {
		CategoryEntity result = new CategoryEntity();
		result.setName(categoryDto.getName());
		result.setTags(categoryDto.getTags());
		return result;	
	}
	public CategoryEntity toEntity(CategoryEntity result,CategoryDto categoryDto) {
		result.setName(categoryDto.getName());
		result.setTags(categoryDto.getTags());
		return result;	
	}
}
