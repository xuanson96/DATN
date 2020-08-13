package com.doancuoikhoa.dto;

import java.util.List;

import com.doancuoikhoa.entity.RoleEntity;

public class PersonDto {
	private String username;
	private String fullname;
	private String address;
	private String city;
	private String password;
	private String email;
	private Long id;
	private String phone;
	private List<RoleEntity> roleEntitys;
	private int roleId;

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

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public List<RoleEntity> getRoleEntitys() {
		return roleEntitys;
	}

	public void setRoleEntitys(List<RoleEntity> roleEntitys) {
		this.roleEntitys = roleEntitys;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
