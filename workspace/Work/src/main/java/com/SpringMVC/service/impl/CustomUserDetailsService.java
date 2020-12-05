package com.SpringMVC.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.SpringMVC.model.dto.MyUserDTO;
import com.SpringMVC.model.entity.RoleEntity;
import com.SpringMVC.model.entity.UserEntity;
import com.SpringMVC.repository.UserRepository;
@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserRepository userRepo;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserEntity user = userRepo.findOneByUserNameAndStatus(username, 1);
		if(user == null) {
			throw new UsernameNotFoundException(" Username or Password not correct! ");
		}
		List<GrantedAuthority> authorities = new ArrayList<>();
		for (RoleEntity role: user.getRoles()) {
			authorities.add(new SimpleGrantedAuthority(role.getRoleCode()));
		}
		MyUserDTO myUser = new MyUserDTO(user.getUserName(),user.getPassword(), 
							true, true, true, true, authorities);
		myUser.setFullName(user.getFullname());
	   return  myUser;
	}

}