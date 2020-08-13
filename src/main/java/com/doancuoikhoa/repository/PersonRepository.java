package com.doancuoikhoa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.doancuoikhoa.entity.PersonEntity;
//không cần phải khai báo @repositoey vi đã kế thừa từ JpaRepository
public interface PersonRepository extends JpaRepository<PersonEntity, Long>{
	PersonEntity findOneByUsername(String name);
}
