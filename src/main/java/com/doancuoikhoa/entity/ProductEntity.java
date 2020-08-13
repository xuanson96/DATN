
package com.doancuoikhoa.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@EntityListeners(AuditingEntityListener.class)
@Table(name = "product")
public class ProductEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@NotNull
	@Column(name = " name", length = 45)
	private String name;

	@NotNull
	// @Digits(integer = 10, fraction = 2)
	@Column(name = "price")
	private Float price;

	@NotNull
	@Column(name = "description", columnDefinition = "TEXT")
	private String description;

	@Column(name = "file")
	@Lob
	private String file;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id", nullable = false)
	private CategoryEntity categoryEntity;

//	@ManyToMany(mappedBy = "productEntity")
//	private List<OrderEntity> OderEntity = new ArrayList<>();
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "productEntity")
	private List<OrderDetailEntity> orderDtailEntity = new ArrayList<>();
	
	
	@Column(name = "createDate")
	@CreatedDate
	private Date createdDate;
	
	@Column(name = "modifiedDate")
	@LastModifiedDate
	private Date modifiedDate;
	
	

	public Date getCreatedDate() {
		return createdDate;
	}

	

	public Date getModifiedDate() {
		return modifiedDate;
	}

	

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}



	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public List<OrderDetailEntity> getOrderDtailEntity() {
		return orderDtailEntity;
	}

	public void setOrderDtailEntity(List<OrderDetailEntity> orderDtailEntity) {
		this.orderDtailEntity = orderDtailEntity;
	}

	public CategoryEntity getCategoryEntity() {
		return categoryEntity;
	}

	public void setCategoryEntity(CategoryEntity categoryEntity) {
		this.categoryEntity = categoryEntity;
	}

	public long getId() {
		return id;
	}

}
