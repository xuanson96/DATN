//package com.doancuoikhoa.entity;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.persistence.CascadeType;
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.JoinTable;
//import javax.persistence.ManyToMany;
//import javax.persistence.Table;
//import javax.validation.constraints.NotNull;
//
//@Entity
//@Table(name = "oder_status")
//public class OderStatusEntity {
//
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private int id;
//
//	@NotNull
//	@Column(name = "status")
//	private String status;
//
//	@Column(name = "description", columnDefinition = "TEXT")
//	private String description;
//
//	@ManyToMany(cascade = { CascadeType.PERSIST, CascadeType.MERGE })
//	@JoinTable(name = "order", joinColumns = @JoinColumn(name = "status_id"), inverseJoinColumns = @JoinColumn(name = "customer_id"))
//
//	private List<PersonEntity> personEntity = new ArrayList<>();
//
//}
