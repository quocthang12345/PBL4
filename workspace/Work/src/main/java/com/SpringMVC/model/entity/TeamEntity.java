package com.SpringMVC.model.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "team")
public class TeamEntity extends BaseEntity {
	@Column(name = "name")
	private String teamName;
	
	@Column(name = "code")
	private String teamCode;
	
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "team")
    private List<WorkEntity> workTeam = new ArrayList<WorkEntity>();
	
	@ManyToMany(fetch = FetchType.LAZY,
			cascade = {
	                CascadeType.PERSIST,
	                CascadeType.MERGE
	            },
			mappedBy = "teams")
    private List<UserEntity> users = new ArrayList<>();
	
	
	
	
	public List<UserEntity> getUsers() {
		return users;
	}

	public void setUsers(List<UserEntity> users) {
		this.users = users;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getTeamCode() {
		return teamCode;
	}

	public void setTeamCode(String teamCode) {
		this.teamCode = teamCode;
	}

	public List<WorkEntity> getWorkTeam() {
		return workTeam;
	}

	public void setWorkTeam(List<WorkEntity> workTeam) {
		this.workTeam = workTeam;
	}

	


	


}

