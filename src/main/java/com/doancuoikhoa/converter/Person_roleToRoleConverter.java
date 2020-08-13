package com.doancuoikhoa.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.doancuoikhoa.entity.RoleEntity;
import com.doancuoikhoa.service.impl.RoleService;

@Component
public class Person_roleToRoleConverter implements Converter<Object, RoleEntity> {
	@Autowired 
	private RoleService roleService;

	@Override
	public RoleEntity convert(Object element) {
		Integer id = Integer.parseInt((String)element);
		RoleEntity roleEntity = roleService.getRoleEntityById(id);		
		return roleEntity;
	}

	
}
