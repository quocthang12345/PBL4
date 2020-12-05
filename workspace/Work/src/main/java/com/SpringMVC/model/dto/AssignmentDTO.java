package com.SpringMVC.model.dto;

import java.util.ArrayList;
import java.util.List;

public class AssignmentDTO extends AbstractDTO<AssignmentDTO> {

	private String assignmentName;
	private String assignmentDescription;
	private Long workId;
	private List<UserDTO> users = new ArrayList<UserDTO>();
	
	public String getAssignmentName() {
		return assignmentName;
	}
	public void setAssignmentName(String assignmentName) {
		this.assignmentName = assignmentName;
	}
	public String getAssignmentDescription() {
		return assignmentDescription;
	}
	public void setAssignmentDescription(String assignmentDescription) {
		this.assignmentDescription = assignmentDescription;
	}
	public Long getWorkId() {
		return workId;
	}
	public void setWorkId(Long workId) {
		this.workId = workId;
	}
	public List<UserDTO> getUsers() {
		return users;
	}
	public void setUsers(List<UserDTO> users) {
		this.users = users;
	}
	
	
	
	
	
	
}
