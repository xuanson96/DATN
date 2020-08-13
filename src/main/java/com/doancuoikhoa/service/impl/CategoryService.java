package com.doancuoikhoa.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doancuoikhoa.converter.CategoryConverter;
import com.doancuoikhoa.dto.CategoryDto;
import com.doancuoikhoa.entity.CategoryEntity;
import com.doancuoikhoa.repository.ICategoryRepository;

@Service
public class CategoryService {
	@Autowired
	private ICategoryRepository categoryRepsitory;
	@Autowired
	private CategoryConverter categoryConverter;

	@Transactional
	public CategoryDto save(CategoryDto categoryDto) {
		CategoryEntity categotyEntitty =  new CategoryEntity();
		if(categoryDto.getId() != null) {
			CategoryEntity OldCategotyEntitty = categoryRepsitory.findOne(categoryDto.getId());
			categotyEntitty = categoryConverter.toEntity(OldCategotyEntitty, categoryDto);
		}else {
			categotyEntitty = categoryConverter.toEntity(categoryDto);
		}
		return categoryConverter.toDto(categoryRepsitory.save(categotyEntitty));
	}

	public List<CategoryDto> listAll() {
		List<CategoryDto> models = new ArrayList<CategoryDto>();
		List<CategoryEntity> categoryEntity = categoryRepsitory.findAll();
		for (CategoryEntity items : categoryEntity) {
			CategoryDto category = categoryConverter.toDto(items);
			models.add(category);
		}
		return models;
	}
	
	/*
	 * public Map<String, String> findAllCategoryName() { Map<String, String> result
	 * = new HashMap<>(); List<CategoryEntity> entities =
	 * categoryRepsitory.findAll(); for (CategoryEntity item: entities) {
	 * result.put(item.getTags(), item.getName()); } return result; }
	 */
	public void delete(Long id) {
		categoryRepsitory.delete(id);
	}
	public CategoryDto findByName(String name) {
		CategoryEntity categoryEntity = categoryRepsitory.findOneByName(name);
		return categoryConverter.toDto(categoryEntity);
	}
	public CategoryDto findCategoryById(Long id) {
		CategoryEntity categoryEntity = categoryRepsitory.findOne(id);
		return categoryConverter.toDto(categoryEntity);
	}	
	
}
