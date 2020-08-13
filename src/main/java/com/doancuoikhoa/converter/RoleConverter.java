package com.doancuoikhoa.converter;

import org.springframework.stereotype.Component;

import com.doancuoikhoa.dto.RoleDto;
import com.doancuoikhoa.entity.RoleEntity;


@Component
public class RoleConverter {
	public RoleDto toDto(RoleEntity roleEntity) {
		RoleDto result = new RoleDto();
		result.setId(roleEntity.getId());
		result.setName(roleEntity.getName());
		result.setDescription(roleEntity.getDescription());
		return result;		
	}
	
}
