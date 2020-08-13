package com.doancuoikhoa.converter;

import org.springframework.stereotype.Component;

import com.doancuoikhoa.dto.PersonDto;
import com.doancuoikhoa.entity.PersonEntity;

@Component
public class PersonConverter {
	public PersonDto toDto(PersonEntity personEntity) {
		PersonDto result = new PersonDto();
		result.setId(personEntity.getId());
		result.setUsername(personEntity.getUsername());
		result.setFullname(personEntity.getFullname());
		result.setAddress(personEntity.getAddress());
		result.setCity(personEntity.getCity());
		result.setEmail(personEntity.getEmail());
		result.setPassword(personEntity.getPassword());
		result.setPhone(personEntity.getPhone());
		result.setImage(personEntity.getImage());
		result.setRoleEntitys(personEntity.getRoleEntitys());				
		return result;		
	}
	
	public PersonEntity toEntity(PersonEntity result, PersonDto personDto) {
		result.setUsername(personDto.getUsername());
		result.setFullname(personDto.getFullname());
		result.setPhone(personDto.getPhone());
		result.setPassword(personDto.getPassword());
		result.setAddress(personDto.getAddress());
		result.setCity(personDto.getCity());
		result.setEmail(personDto.getEmail());
		result.setImage(personDto.getImage());	
		return result;	
	}
	public PersonEntity toEntity(PersonDto personDto) {
		PersonEntity result = new PersonEntity();
		result.setUsername(personDto.getUsername());
		result.setFullname(personDto.getFullname());
		result.setPhone(personDto.getPhone());
		result.setPassword(personDto.getPassword());
		result.setAddress(personDto.getAddress());
		result.setCity(personDto.getCity());
		result.setEmail(personDto.getEmail());	
		result.setImage(personDto.getImage());		
		return result;		
	}
}




