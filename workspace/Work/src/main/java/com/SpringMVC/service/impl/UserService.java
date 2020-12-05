package com.SpringMVC.service.impl;

import java.util.Base64;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.SpringMVC.model.convert.userConvert;
import com.SpringMVC.model.dto.UserDTO;
import com.SpringMVC.model.entity.RoleEntity;
import com.SpringMVC.model.entity.UserEntity;
import com.SpringMVC.repository.RoleRepository;
import com.SpringMVC.repository.UserRepository;
import com.SpringMVC.service.IUserService;
import com.SpringMVC.util.UploadFileUtils;

@Service
public class UserService implements IUserService {
	
	@Autowired
	private UserRepository userRepo;
	@Autowired
	private userConvert userConverter;
	@Autowired
	private RoleRepository roleRepo;
	@Autowired
	private PasswordEncoder encoder;
	@Autowired
	private UploadFileUtils fileUtils;

	@Override
	@Transactional
	public UserDTO registerUser(UserDTO userDTO) {
		UserEntity checkUser = userRepo.findOneByUserNameAndStatus(userDTO.getUserName(), 1);
		if(checkUser != null) {
			return null;
		}
		RoleEntity role = roleRepo.findOneByRoleCode("USER");
		UserEntity user = userConverter.toEntity(userDTO);
		role.getUsers().add(user);
		user.setPassword(encoder.encode(user.getPassword()));
		user.setStatus(1);
		user.getRoles().add(role);
		return userConverter.toDTO(userRepo.save(user));
	}

	@Override
	@Transactional
	public UserDTO updateUser(UserDTO userDTO) {
		UserEntity user = userConverter.toEntity(userDTO);
		if(userDTO.getPassWord() != null && !userDTO.getPassWord().equals("")) {
			user.setPassword(encoder.encode(userDTO.getPassWord()));
    	}
		if(userDTO.getBase64() != null) {
			byte[] decodeBase64 = Base64.getDecoder().decode((userDTO.getBase64().split(",")[1]).getBytes());
			user.setAvatar(fileUtils.writeOrUpdate(decodeBase64, userDTO.getUserAvatar()));
		}
		UserDTO newUser = userConverter.toDTO(userRepo.save(user));
		return newUser;
	}

	@Override
	public UserDTO findByUsername(String username) {
		return userConverter.toDTO(userRepo.findOneByUserNameAndStatus(username, 1));
	}

	@Override
	public UserDTO findById(Long id) {
		return userConverter.toDTO(userRepo.findOne(id));
	}

	@Override
	public UserEntity findOne(Long id) {
		return userRepo.findOne(id);
	}

	@Override
	public String getNameOfUserById(Long id) {
		UserDTO user = userConverter.toDTO(userRepo.findOne(id));
		return user.getFullName();
	}


}
