package com.doancuoikhoa.entity;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "order")
public class OrderEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@Column(name = "amount")
	private Float amount;

	@NotNull
	@Column(name = "date_create", columnDefinition = "TIMESTAMP")
	private LocalDateTime dateCreate;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "orderEntity")
	// private List<OrderDtailEntity> orderDtailEntity = new ArrayList<>();
	private List<OrderDetailEntity> orderDetailEntity = new ArrayList<OrderDetailEntity>();

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "person_id", nullable = false)
	private PersonEntity personEntity;

	public List<OrderDetailEntity> getOrderDtailEntity() {
		return orderDetailEntity;
	}

	public Float getAmount() {
		return amount;
	}

	public void setAmount(Float amount) {
		this.amount = amount;
	}

	public void setOrderDtailEntity(List<OrderDetailEntity> orderDtailEntity) {
		this.orderDetailEntity = orderDtailEntity;
	}

	public PersonEntity getPersonEntity() {
		return personEntity;
	}

	public void setPersonEntity(PersonEntity personEntity) {
		this.personEntity = personEntity;
	}

	public LocalDateTime getDateCreate() {
		return dateCreate;
	}

	public void setDateCreate(LocalDateTime dateCreate) {
		this.dateCreate = dateCreate;
	}

	public Long getId() {
		return id;
	}

	public List<OrderDetailEntity> getOrderDetailEntity() {
		return orderDetailEntity;
	}

	public void setOrderDetailEntity(List<OrderDetailEntity> orderDetailEntity) {
		this.orderDetailEntity = orderDetailEntity;
	}

	public void setId(Long id) {
		this.id = id;
	}

}
