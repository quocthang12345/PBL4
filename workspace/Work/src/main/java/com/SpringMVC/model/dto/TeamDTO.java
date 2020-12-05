package com.SpringMVC.model.dto;

import java.util.ArrayList;
import java.util.List;

public class TeamDTO extends AbstractDTO<TeamDTO> {

	private String teamName;
	private String teamCode;
	private List<WorkDTO> workTeam = new ArrayList<WorkDTO>();
	private List<UserDTO> users = new ArrayList<UserDTO>();
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
	
	public List<UserDTO> getUsers() {
		return users;
	}
	public void setUsers(List<UserDTO> users) {
		this.users = users;
	}
	public List<WorkDTO> getWorkTeam() {
		return workTeam;
	}
	public void setWorkTeam(List<WorkDTO> workTeam) {
		this.workTeam = workTeam;
	}
	
	
	

	
	
	
}
