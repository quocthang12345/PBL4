package com.SpringMVC.model.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "assignment")
public class AssignmentEntity extends BaseEntity {
	@Column(name = "name")
	private String assignmentName;
	
	@Column(name = "decription")
	private String descriptionAssignment;
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "work_id" ,nullable = false, 
	        foreignKey = @ForeignKey(name = "fk_assignment_work"))
	private WorkEntity work;
	
	@ManyToMany(fetch = FetchType.LAZY,
			cascade = {
	                CascadeType.PERSIST,
	                CascadeType.MERGE
	            },
			mappedBy = "assignments")
    private List<UserEntity> users = new ArrayList<>();


	

	public List<UserEntity> getUsers() {
		return users;
	}



	public void setUsers(List<UserEntity> users) {
		this.users = users;
	}



	public String getAssignmentName() {
		return assignmentName;
	}



	public void setAssignmentName(String assignmentName) {
		this.assignmentName = assignmentName;
	}



	public String getDescriptionAssignment() {
		return descriptionAssignment;
	}



	public void setDescriptionAssignment(String descriptionAssignment) {
		this.descriptionAssignment = descriptionAssignment;
	}



	public WorkEntity getWork() {
		return work;
	}



	public void setWork(WorkEntity work) {
		this.work = work;
	}
	
	
	






	
	
	
}
