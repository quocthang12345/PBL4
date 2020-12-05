package com.SpringMVC.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.SpringMVC.model.dto.UserDTO;
import com.SpringMVC.service.IUserService;

@RestController(value = "UserApiOfWeb")
public class UserAPI {
	
	@Autowired
	private IUserService userService;
	
	@GetMapping(value = "/api/user")
	public UserDTO ReadUser(){
		return null;
		
	}
	
	@PostMapping(value = "/api/user")
	public UserDTO InsertUser(@RequestBody UserDTO userDto){
		return userService.registerUser(userDto);
	}
	
	@PutMapping(value = "/api/user")
	public UserDTO UpdateUser(@RequestBody UserDTO userDto){
		return userService.updateUser(userDto);	
	}
	
	@DeleteMapping(value = "/api/user")
	public void DeleteUser(@RequestBody long[] ids){
		
	}
	
}
