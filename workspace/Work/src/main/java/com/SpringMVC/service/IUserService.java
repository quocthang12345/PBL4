package com.SpringMVC.service;

import com.SpringMVC.model.dto.UserDTO;
import com.SpringMVC.model.entity.UserEntity;

public interface IUserService {
	UserDTO registerUser(UserDTO user);
	UserDTO updateUser(UserDTO user);
	UserDTO findByUsername(String username);
	UserDTO findById(Long id);
	UserEntity findOne(Long id);
	String getNameOfUserById(Long id);
}
