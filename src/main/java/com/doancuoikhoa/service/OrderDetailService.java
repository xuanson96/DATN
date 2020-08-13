package com.doancuoikhoa.service;

import java.util.List;

import org.springframework.data.domain.jaxb.SpringDataJaxb.OrderDto;
import org.springframework.stereotype.Service;

import com.doancuoikhoa.dto.OrderDetailDto;

@Service
public interface OrderDetailService {
	
	

	public OrderDto getOrderDetailInfo(Long orderId);

	public List<OrderDetailDto> listOrderDetailInfos(Long productId);
}
