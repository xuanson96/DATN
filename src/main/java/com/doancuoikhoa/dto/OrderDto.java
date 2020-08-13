package com.doancuoikhoa.dto;

import java.time.LocalDateTime;
import java.util.List;

public class OrderDto {
	private Long id;
	private LocalDateTime orderDate;
	private int orderNum;
	private Float amount;
	private String personName;
	private String personAddress;
	private String personrEmail;
	private List<OrderDetailDto> details;

	public OrderDto() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public LocalDateTime getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDateTime orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public float getAmount() {
		return amount;
	}

	public void setAmount(Float amount) {
		this.amount = amount;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public String getPersonAddress() {
		return personAddress;
	}

	public void setPersonAddress(String personAddress) {
		this.personAddress = personAddress;
	}

	public String getPersonrEmail() {
		return personrEmail;
	}

	public void setPersonrEmail(String personrEmail) {
		this.personrEmail = personrEmail;
	}

	public List<OrderDetailDto> getDetails() {
		return details;
	}

	public void setDetails(List<OrderDetailDto> details) {
		this.details = details;
	}

}
