package com.SpringMVC.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.SpringMVC.model.dto.WorkDTO;
import com.SpringMVC.service.IWorkService;

@RestController(value = "WorkApiOfAdmin")
public class WorkAPI {
	@Autowired
	private IWorkService workService;
	
	@GetMapping(value = "/api/work")
	public WorkDTO ReadWork(){
		return null;
		
	}
	
	@PostMapping(value = "/api/work")
	public WorkDTO InsertWork(@RequestBody WorkDTO workDto){
		return workService.Update(workDto);
	}
	
	@PutMapping(value = "/api/work")
	public WorkDTO UpdateWork(@RequestBody WorkDTO workDto){
		return workService.Update(workDto);	
	}
	
	
	@DeleteMapping(value = "/api/work")
	public void DeleteWork(@RequestBody Long[] ids){
		workService.Delete(ids);
	}
}