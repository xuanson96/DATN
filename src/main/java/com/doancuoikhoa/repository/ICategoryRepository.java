package com.doancuoikhoa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.doancuoikhoa.entity.CategoryEntity;

public interface ICategoryRepository extends JpaRepository<CategoryEntity, Long> {
	CategoryEntity findOneByName(String name);	
}
