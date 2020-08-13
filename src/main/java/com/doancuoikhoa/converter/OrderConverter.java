package com.doancuoikhoa.converter;

import org.springframework.stereotype.Component;

import com.doancuoikhoa.dto.OrderDto;
import com.doancuoikhoa.entity.OrderEntity;

@Component
public class OrderConverter {

	public OrderDto toDto(OrderEntity orderEntity) {
		OrderDto result = new OrderDto();
		result.setOrderDate(orderEntity.getDateCreate());
		result.setAmount(orderEntity.getAmount());
		result.setPersonName(orderEntity.getPersonEntity().getFullname());
		result.setPersonAddress(orderEntity.getPersonEntity().getAddress());
		result.setPersonrEmail(orderEntity.getPersonEntity().getEmail());
		return result;
	}

	public OrderEntity toEntity(OrderDto orderDto) {
		OrderEntity result = new OrderEntity();
		result.setDateCreate(orderDto.getOrderDate());
		result.setAmount(orderDto.getAmount());
		return result;
	}
}
