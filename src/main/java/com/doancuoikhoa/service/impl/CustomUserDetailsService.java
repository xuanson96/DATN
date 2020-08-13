package com.doancuoikhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import com.doancuoikhoa.dto.MyUser;
import com.doancuoikhoa.entity.PersonEntity;
import com.doancuoikhoa.entity.RoleEntity;
import com.doancuoikhoa.repository.PersonRepository;

//authencation
@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private PersonRepository personRepository;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		PersonEntity personEntity = personRepository.findOneByUsername(username);
		 if (personEntity == null) {
	            throw new UsernameNotFoundException("not found account");
	        }
		 List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		 for(RoleEntity role : personEntity.getRoleEntitys()) {
			 authorities.add(new SimpleGrantedAuthority(role.getDescription()));
		 }
		 MyUser myUser = new MyUser(personEntity.getUsername(), personEntity.getPassword(), 
				 true, true, true, true, authorities);		 
	     //return new MyUserPrincipal(personEntity);
		 myUser.setFullName(personEntity.getFullname());
		 myUser.setId(personEntity.getId());
		 //Bởi vì user implement từ userDetail
		 //myUser extend từ user
		return myUser;
		
	}

}
