package com.doancuoikhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doancuoikhoa.converter.RoleConverter;
import com.doancuoikhoa.dto.RoleDto;
import com.doancuoikhoa.entity.RoleEntity;
import com.doancuoikhoa.repository.RoleRepository;

@Service
public class RoleService {
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private RoleConverter roleConverter;

	public List<RoleDto> listAllRole() {
		List<RoleDto> models = new ArrayList<RoleDto>();
		List<RoleEntity> roleEntity = (List<RoleEntity>) roleRepository.findAll();
		for (RoleEntity items : roleEntity) {
			RoleDto role = roleConverter.toDto(items);
			models.add(role);
		}
		return models;
	}
	public RoleDto getRoleDtoById(int id) {
		RoleEntity roleEntity = roleRepository.getOne(id);		
		return roleConverter.toDto(roleEntity);		
	}
	public RoleEntity getRoleEntityById(int id) {
		return roleRepository.getOne(id);		
	}
}
