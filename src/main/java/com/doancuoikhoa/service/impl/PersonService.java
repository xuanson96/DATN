package com.doancuoikhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doancuoikhoa.converter.PersonConverter;
import com.doancuoikhoa.dto.PersonDto;
import com.doancuoikhoa.entity.PersonEntity;
import com.doancuoikhoa.repository.PersonRepository;



@Service
public class PersonService {
	@Autowired 
	PersonRepository personRepository;
	
	@Autowired
	PersonConverter personConverter;
	
	public List<PersonDto> listAllPerson(){
		List<PersonEntity> personEntity =  personRepository.findAll() ;
		List<PersonDto> result = new ArrayList<>();
		for(PersonEntity person : personEntity) {
			PersonDto personDto = personConverter.toDto(person);	
			result.add(personDto);				
		}			
		return result;	
	}
	public PersonDto findPersonById(Long id){
		PersonEntity personEntity = personRepository.findOne(id);
		PersonDto personDto = personConverter.toDto(personEntity);
		return personDto;		
	}
	
	@Transactional
	public PersonDto save(PersonDto personDto) {
		PersonEntity personEntity = new PersonEntity();
		if(personDto.getId() != null) {
			PersonEntity oldPersonEntity = personRepository.findOne(personDto.getId());
			personEntity = personConverter.toEntity(oldPersonEntity, personDto);
		}else {
			personEntity = personConverter.toEntity(personDto);
		}		
		return  personConverter.toDto(personRepository.save(personEntity));		
	}
}
