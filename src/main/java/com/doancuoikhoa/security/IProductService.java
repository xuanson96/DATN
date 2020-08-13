package com.doancuoikhoa.security;

import java.util.List;

import com.doancuoikhoa.entity.ProductEntity;

public interface IProductService {
	public List<ProductEntity> getListByCategory(long categoryId);
}
