package com.doancuoikhoa.converter;

import org.springframework.stereotype.Component;

import com.doancuoikhoa.dto.OrderDetailDto;
import com.doancuoikhoa.entity.OrderDetailEntity;

@Component
public class OrderDetailConverter {
	public OrderDetailEntity toEntity(OrderDetailDto orderDetailDto) {
		OrderDetailEntity result = new OrderDetailEntity();
		result.setId(orderDetailDto.getId());
		result.setQuantity(orderDetailDto.getQuantity());
		return result;
	}

	public OrderDetailDto toDto(OrderDetailEntity orderDetailEntity) {
		OrderDetailDto result = new OrderDetailDto();
		result.setId(orderDetailEntity.getId());
		result.setQuantity(orderDetailEntity.getQuantity());
		result.setPrice(orderDetailEntity.getProductEntity().getPrice());
		result.setProductId(orderDetailEntity.getProductEntity().getId());
		result.setProductName(orderDetailEntity.getProductEntity().getName());
		result.setFile(orderDetailEntity.getProductEntity().getFile());
		return result;
	}
}
