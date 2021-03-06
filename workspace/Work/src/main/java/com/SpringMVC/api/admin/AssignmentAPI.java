package com.SpringMVC.api.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.SpringMVC.model.dto.AssignmentDTO;
import com.SpringMVC.service.IAssignmentService;

@RestController(value = "AssignmentApiOfAdmin")
public class AssignmentAPI {
	
	@Autowired
	private IAssignmentService assignmentService;
	
	@GetMapping(value = "/api/assignment")
	public List<AssignmentDTO> GetAssignment() {
		return null;	
	}
	@PostMapping(value = "/api/assignment")
	public AssignmentDTO InsertAssignment(@RequestBody AssignmentDTO assignment) {
		return assignmentService.Insert(assignment);	
	}
	@PutMapping(value = "/api/assignment")
	public AssignmentDTO UpdateAssignment(@RequestBody AssignmentDTO assignment) {
		return assignmentService.Update(assignment);	
	}
	@DeleteMapping(value = "/api/assignment")
	public void DeleteAssignment(@RequestBody Long[] ids) {
		assignmentService.Delete(ids);
	}

}
