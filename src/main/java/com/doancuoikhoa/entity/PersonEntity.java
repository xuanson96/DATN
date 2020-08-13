package com.doancuoikhoa.entity;

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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "person")
public class PersonEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@Column(name = "username", length = 50)
	private String username;

	@NotNull
	@Column(name = "fullname", length = 100)
	private String fullname;

	@NotNull
	@Column(name = "email", length = 45)
	private String email;

	@NotNull
	@Column(name = "address", length = 45)
	private String address;

	@NotNull
	@Column(name = "city", length = 45)
	private String city;

	// đổi từ password sang paaswords
	@NotNull
	@Column(name = "password", length = 100)
	private String password;

	@NotNull
	@Column(name = "phone", length = 50)
	private String phone;

	@NotNull
	@Column(name = "image")
	private String image;

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "person_role", joinColumns = @JoinColumn(name = "person_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private List<RoleEntity> roleEntitys = new ArrayList<>();

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "personEntity")
	private List<OrderEntity> orderEntity = new ArrayList<>();

	public List<RoleEntity> getRoleEntitys() {
		return roleEntitys;
	}

	public void setRoleEntitys(List<RoleEntity> roleEntitys) {
		this.roleEntitys = roleEntitys;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<OrderEntity> getOrderEntity() {
		return orderEntity;
	}

	public void setOrderEntity(List<OrderEntity> orderEntity) {
		this.orderEntity = orderEntity;
	}

	public long getId() {
		return id;
	}

}
