package com.doancuoikhoa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.doancuoikhoa.entity.ProductEntity;

public interface IProductRepository extends JpaRepository<ProductEntity, Long> {
	@Query(value = "SELECT c FROM ProductEntity c WHERE c.name LIKE '%' || :keyword || '%'"
			+ " OR c.price LIKE '%' || :keyword || '%'" + " OR c.description LIKE '%' || :keyword || '%'")
	public List<ProductEntity> search(@Param("keyword") String keyword);
}
